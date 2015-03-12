/* 
 * This work is licensed under the Creative Commons
 * Attribution-ShareAlike 4.0 International License.
 * To view a copy of this license, visit
 * http://creativecommons.org/licenses/by-sa/4.0/.
 * 
 * @license cc-by-sa
 * @author Hauke Thorenz <htho@thorenz.net>
 * @datasheet https://cdn-reichelt.de/documents/datenblatt/C200/DS_ESP_SERIE.pdf
 * @fritzing https://github.com/fritzing/fritzing-parts/blob/master/svg/core/pcb/jumper_3_100mil.svg
 * @manufacturer EXCEL CELL ELECTRONIC
 * @manufacturer-product ESP10XX
 * @type 3-Pin PCB Slide Switch
 */

module ESP10XX_hq()
{
  rm = 2.54;
  
  widthSocket=10;
  depthSocket=2.5;
  heightSocket=4.5;
  
  widthLeg=0.6;
  depthLeg=0.5;
  heightLeg=commonLegLength;
  
  sliderWidth = 8.4;
  sliderHeight = 1.5;
  
  rotate([0,0,-90]){ //rotating it so the orientation fits the Fritzing part 
    translate([rm,0,0]){ //Translating so the center is on connector0
      translate([0,0,heightSocket/2]) cube([widthSocket, depthSocket, heightSocket], true); //body
      
      translate([-rm,0,-commonLegLength/2]) cube([commonLegDiameter, commonLegDiameter, commonLegLength],true); //leg
      translate([0,0,-commonLegLength/2]) cube([commonLegDiameter, commonLegDiameter, commonLegLength],true); //leg
      translate([rm,0,-commonLegLength/2]) cube([commonLegDiameter, commonLegDiameter, commonLegLength],true); //leg
      
      //slider

      translate([0,0,heightSocket]) cube([sliderWidth, depthSocket, sliderHeight], true);

    }
  }
}
