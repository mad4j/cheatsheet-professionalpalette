
Entry[] entries = {
  new Entry("white", 0xFFF2F3F4),
  new Entry("black", 0xFF222222),
  new Entry("yellow", 0xFFF3C300),
  new Entry("purple", 0xFF875692),
  new Entry("orange", 0xFFF38400),
  new Entry("light blue", 0xFFA1CAF1),
  new Entry("red", 0xFFBE0032),
  new Entry("buff", 0xFFC2B280),
  new Entry("grey", 0xFF848482),
  new Entry("green", 0xFF008856),
  new Entry("purplish pink", 0xFFE68FAC),
  new Entry("blue", 0xFF0067A5),
  new Entry("yellowish pink", 0xFFF99379),
  new Entry("violet", 0xFF604E97),
  new Entry("orange yellow", 0xFFF6A600),
  new Entry("purplish red", 0xFFB3446C),
  new Entry("greenish yellow", 0xFFDCD300),
  new Entry("reddish brown", 0xFF882D17),
  new Entry("yellow green", 0xFF8DB600),
  new Entry("yellowish brown", 0xFF654522),
  new Entry("reddish orange", 0xFFE25822),
  new Entry("olive green", 0xFF2B3D26),
};


class Entry {
  
  public String name;
  public int value;
  
  public Entry(String name, int value) {
    this.name = name;
    this.value = value;
  }
}


void setup() {
  
  size(512, 640);
  noLoop();
}

void draw() {
  
  noStroke();
  //ellipseMode(CENTER);
  
  for (int i=0; i<entries.length; i++) {
    
    fill(0xFF000000);
    text(i+1, 10, 10+i*30);
    
    fill(entries[i].value);
    ellipse(50, 10+i*30, 25, 25);
    
    fill(0xFF000000);
    text(entries[i].name, 100, 10+i*30);
    //text(String.format("%08X", entries[i].value & 0x00FFFFFF), 200, 10+i*30);
  }
}

