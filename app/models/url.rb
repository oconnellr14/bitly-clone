class Url < ActiveRecord::Base
    def compressor
       Array.new(6){[*"A".."Z",*"a".."z", *"0".."9"].sample}.join
    end
end
