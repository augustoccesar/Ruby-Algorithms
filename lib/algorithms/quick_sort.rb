module Algorithms
    class QuickSort
        def self.run(vet, options = {})
            if(options[:new_list] && options[:new_list] == true)
                new_vet = vet.clone
                quick_sort(new_vet, 0, new_vet.size - 1)
                return new_vet
            else
                quick_sort(vet, 0, vet.size - 1)
            end
        end

        private

        def self.partition(vet, left, right)
            pivot_value = vet[left]

            left_mark = left + 1
            right_mark = right

            done = false

            while !done
                while left_mark <= right_mark && vet[left_mark] <= pivot_value
                    left_mark += 1
                end

                while vet[right_mark] >= pivot_value && right_mark >= left_mark
                    right_mark -= 1
                end

                if right_mark < left_mark
                    done = true
                else
                    temp = vet[left_mark]
                    vet[left_mark] = vet[right_mark]
                    vet[right_mark] = temp
                end
            end

            temp = vet[left]
            vet[left] = vet[right_mark]
            vet[right_mark] = temp

            return right_mark
        end

        def self.quick_sort(vet, left, right)
            if left < right
                splitpoint = partition(vet, left, right)

                quick_sort(vet, left, splitpoint - 1)
                quick_sort(vet, splitpoint + 1, right)
            end
        end
    end
end

