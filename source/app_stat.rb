# encoding: utf-8

require 'csv'
require 'test/unit'

class NilClass
    def to_num
        0
    end
end

class String
    def to_num
        case self
        when /억/ then
            a, b = self.split('억')
            a.to_num * 100_000_000 + b.to_num
        when /만/ then
            a, b = self.split('만')
            a.to_num * 10_000 + b.to_num
        else
            if self =~ /((\d+)천)?(\d+)?/
                $2.to_i * 1000 + $3.to_i
            else
                to_i
            end
        end
    end
end

class App
    attr_reader :gab, :name, :cost, :download_count

    def initialize(args)
        @gab = args[0]
        @name = args[1]
        @cost = args[2].to_num
        @download_count = args[3].to_num
    end

    def efficiency
        @cost == 0 ? 0 : @download_count.to_f / @cost
    end
end

class AppStat
    attr_reader :apps

    def initialize(opts = {})
        @apps = []
        load_from_csv(opts[:csv]) if opts[:csv]
    end

    def most_efficient_app
        @apps.max_by { |app| app.efficiency }
    end

    private
    def load_from_csv(file_path)
        CSV.foreach(file_path) do |row|
            @apps << App.new(row)
        end
    end
end

describe String, "#to_num" do
    it 'pass to below tests' do
        "3천500만원".to_num.should == 3500 * 10000 
        "4천500만원".to_num.should == 4500 * 10000
        "없음(삼성전자)".to_num.should == 0
        "750만원".to_num.should == 750 * 10000
        "2억원".to_num.should == 2 * 10 ** 8
        "1천만원".to_num.should == 10 ** 7
        "2억6천600만원".to_num.should == 2_6600_0000
        "2억6천만원".to_num.should == 2_6000_0000
        "160건".to_num.should == 160
        "16만건".to_num.should == 16 * 10 ** 4
        "4천670건".to_num.should == 4670
    end
end

describe AppStat, "#most_efficient_app" do
    it 'finds most efficient app' do
        AppStat.new(:csv => 'app_stat.csv').most_efficient_app.name.should == '시사경제용어'
    end
end
