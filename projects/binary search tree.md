# Binary Search Tree (BST) Aşamaları

Verilen dizi: `[7, 5, 1, 8, 3, 6, 0, 9, 4, 2]`

### Aşamalar

1. **İlk Eleman: 7**
   - `Root` 7'dir.
   - `Root: 7`

2. **İkinci Eleman: 5**
   - 5, 7'den küçüktür, bu yüzden 7'nin soluna yerleştirilir.
   - `Root: 7`
     - `Sol: 5`

3. **Üçüncü Eleman: 1**
   - 1, 7'den küçüktür ve 5'ten de küçüktür, bu yüzden 5'in soluna yerleştirilir.
   - `Root: 7`
     - `Sol: 5`
       - `Sol: 1`

4. **Dördüncü Eleman: 8**
   - 8, 7'den büyüktür, bu yüzden 7'nin sağına yerleştirilir.
   - `Root: 7`
     - `Sol: 5`
       - `Sol: 1`
     - `Sağ: 8`

5. **Beşinci Eleman: 3**
   - 3, 7'den küçüktür ve 5'ten küçüktür ama 1'den büyüktür, bu yüzden 1'in sağına yerleştirilir.
   - `Root: 7`
     - `Sol: 5`
       - `Sol: 1`
         - `Sağ: 3`
     - `Sağ: 8`

6. **Altıncı Eleman: 6**
   - 6, 7'den küçüktür ve 5'ten büyüktür, bu yüzden 5'in sağına yerleştirilir.
   - `Root: 7`
     - `Sol: 5`
       - `Sol: 1`
         - `Sağ: 3`
       - `Sağ: 6`
     - `Sağ: 8`

7. **Yedinci Eleman: 0**
   - 0, 7'den küçüktür, 5'ten küçüktür ve 1'den de küçüktür. Bu yüzden 1'in soluna yerleştirilir.
   - `Root: 7`
     - `Sol: 5`
       - `Sol: 1`
         - `Sol: 0`
         - `Sağ: 3`
       - `Sağ: 6`
     - `Sağ: 8`

8. **Sekizinci Eleman: 9**
   - 9, 7'den büyüktür ve 8'den de büyüktür. Bu yüzden 8'in sağına yerleştirilir.
   - `Root: 7`
     - `Sol: 5`
       - `Sol: 1`
         - `Sol: 0`
         - `Sağ: 3`
       - `Sağ: 6`
     - `Sağ: 8`
       - `Sağ: 9`

9. **Dokuzuncu Eleman: 4**
   - 4, 7'den küçüktür, 5'ten küçüktür ama 3'ten büyüktür. Bu yüzden 3'ün sağına yerleştirilir.
   - `Root: 7`
     - `Sol: 5`
       - `Sol: 1`
         - `Sol: 0`
         - `Sağ: 3`
           - `Sağ: 4`
       - `Sağ: 6`
     - `Sağ: 8`
       - `Sağ: 9`

10. **Onuncu Eleman: 2**
    - 2, 7'den küçüktür, 5'ten küçüktür ve 1'den büyüktür. Bu yüzden 1'in sağında, 3'ün soluna yerleştirilir.
    - `Root: 7`
      - `Sol: 5`
        - `Sol: 1`
          - `Sol: 0`
          - `Sağ: 2`
        - `Sağ: 3`
          - `Sağ: 4`
        - `Sağ: 6`
      - `Sağ: 8`
        - `Sağ: 9`
### son hali 


```md

       7
     /   \
    5     8
   / \     \
  1   6     9
 / \
0   3
   / \
  2   4
```
