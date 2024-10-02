function triangle(maxHeightForTriangle) {
  for (let index = 1; index <= maxHeightForTriangle; index++) {
    let currentStar = "";
    for (let j = 0; j < index; j++) {
      if (index == 1) {
        currentStar += "*";
      } else {
        if (j == 0) {
          currentStar += "*";
        } else {
          currentStar += "**";
        }
      }
    }
    console.log(currentStar);
  }
}
triangle(3);
triangle(4);
