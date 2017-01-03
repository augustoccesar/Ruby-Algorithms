module Algorithms
    class SelectionSort
        def self.run(vet, options = {})
            if(options[:new_list] && options[:new_list] == true)
                new_vet = vet.clone
                selection_sort(new_vet)
                return new_vet
            else
                selection_sort(vet)
                return nil
            end
        end

        private

        def self.selection_sort(vet)
            for i in (0..(vet.size - 1))
                min = vet[i]
                min_index = i
                for j in ((i+1)..(vet.size - 1))
                    if vet[j] < min
                        min = vet[j]
                        min_index = j
                    end
                end
                
                temp = vet[i]
                vet[i] = min
                vet[min_index] = temp
            end
        end
    end
end