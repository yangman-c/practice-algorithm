da = [16, 4, 10, 14, 7, 9, 3, 2, 8, 1]

/**
 * 从 index 开始检查并保持最大堆性质
 *
 * @array
 *
 * @index 检查的起始下标
 *
 * @heapSize 堆大小
 *
 **/
function maxHeapify(array, index, heapSize) {
  var iMax = index,
      iLeft = 2 * index + 1,
      iRight = 2 * (index + 1);
  console.log('first of all1:   ', iMax, iLeft, iRight);
  console.log('first of all2:   ', heapSize, array[iLeft], array[index]);
  if (iLeft < heapSize && array[index] < array[iLeft]) {
    iMax = iLeft;
    console.log('first of all3:   ', iMax, iLeft, iRight);
    console.log('first of all4:   ', heapSize, array[iLeft], array[index]);
  }

  if (iRight < heapSize && array[iMax] < array[iRight]) {
    iMax = iRight;
    console.log('first of all5:   ', iMax, iLeft, iRight);
    console.log('first of all6:   ', heapSize, array[iLeft], array[iRight]);
  }

  if (iMax != index) {
    // swap(array, iMax, index);
    var temp = array[i];
    array[i] = array[j];
    array[j] = temp;
    maxHeapify(array, iMax, heapSize); // 递归调整
  }
}

// function swap(array, i, j) {
//   var temp = array[i];
//   array[i] = array[j];
//   array[j] = temp;
// }
maxHeapify(da, 3, 10);
