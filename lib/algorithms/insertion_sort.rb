module Algorithms
    class InsertionSort
        def self.run(vet, options = {})
            if options[:new_list] && options[:new_list] == true
                new_vet = vet.clone
                insertion_sort(new_vet)
                return new_vet
            else
                insertion_sort(vet)
                return nil
            end            
        end

        private

        def self.insertion_sort(vet)
            for i in (0..(vet.size - 1)) do
                j = i
                while j > 0 && vet[j-1] > vet[j]
                    temp = vet[j]
                    vet[j] = vet[j-1]
                    vet[j-1] = temp
                    j = j - 1
                end
            end
        end
    end
end