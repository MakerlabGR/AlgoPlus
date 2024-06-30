#ifndef img_H
#define img_H

#ifdef __cplusplus
#include <iostream>
#include <vector>
#include <cassert>
#endif


class Image{
private:
  std::vector<std::vector<int32_t> > img;
  int height;
  int width;

public:

  /**
   * @brief image default constructor
   * @param img_pass: passed image(default empty)
   */
  explicit Image(std::vector<std::vector<int32_t> > img_pass = {}) noexcept {
    if(!img_pass.empty()){
      height = img.size();
      width = img[0].size();
      img = img_pass;
    }
  }

  /**
   * @brief Image secondary constructor
   * @param height: the input height
   * @param width: the input width
   */
  explicit Image(int height, int width) {
    assert(height > 0);
    assert(width > 0);
    this->height = height;
    this->width = width;
    img = std::vector<std::vector<int32_t> >(height, std::vector<int32_t>(width, 0));
  }

  /**
   * @brief _height function
   * @return int: the height of the image
   */
  int _height() const { return this -> height; }

  /**
   * @brief width function
   * @return int: the width of the image
   */
  int _width() const { return this -> width; }

  /**
   * @brief get_2d_array function
   * @return vector<vector<int32_t> >: the 2d array of the image
   */
  std::vector<std::vector<int32_t> > get_2d_array() const { return img; }

  /** 
   * @brief add_2_point function
   * @param x: first coordinate
   * @param y: second coordinate
   * @param val: the value you want to add to the point img(x, y)
   */
  template <typename T>
  void add_2_point(const int x, const int y, const T val){
    img[x][y] += val;
  }

  /**
   * @brief get_point function
   * @param x: first coordinate
   * @param y: second coordinate
   * @return int32_t: the value of img(x, y)
   */
  int32_t get_point(const int x, const int y){
    return img[x][y];
  }

  /**
   * @brief add function
   * adds the img2 to img 
   * @param img2: the image you want to add to the img
   * @return vector<vector<int32_t> > the resulted image
   */
  Image add(std::vector<std::vector<int32_t> > &img2) const {  
    assert(!img2.empty());
    assert(img2.size() == img.size());
    assert(img2[0].size() == img[0].size());

    Image resulted_img(height, width);
    for(int x = 0; x < height; x++){
      for(int y = 0; y < width; y++){
        resulted_img.add_2_point(x, y, img[x][y] + img2[x][y]);
      }
    }
    return resulted_img;
  }

  /**
   * @brief secondary add function with Image as a parameter
   * adds the img2 to img 
   * @param img2: the image you want to add to the img
   * @return vector<vector<int32_t> > the resulted image
   */
  Image add(Image img2) const {  
    assert(img2._height() == img.size());
    assert(img2._width() == img[0].size());
  
    Image resulted_img(height, width);
    for(int x = 0; x < height; x++){
      for(int y = 0; y < width; y++){
        resulted_img.add_2_point(x, y, img[x][y] + img2.get_point(x, y));
      }
    }
    return resulted_img;
  }

  /**
   * @brief sub function
   * adds the img2 to img 
   * @param img2: the image you want to subtract from the img
   * @return vector<vector<int32_t> > the resulted image
   */
  Image sub(std::vector<std::vector<int32_t> > &img2) const {  
    assert(!img2.empty());
    assert(img2.size() == img.size());
    assert(img2[0].size() == img[0].size());
  
    Image resulted_img(height, width);
    for(int x = 0; x < height; x++){
      for(int y = 0; y < width; y++){
        resulted_img.add_2_point(x, y, img[x][y] - img2[x][y]);
      }
    }
    return resulted_img;
  }

  /**
   * @brief secondary sub function with Image as an input
   * adds the img2 to img 
   * @param img2: the image you want to subtract from the img
   * @return vector<vector<int32_t> > the resulted image
   */
  Image sub(Image img2) const {  
    assert(img2._height() == img.size());
    assert(img2._width() == img[0].size());

    Image resulted_img(height, width);
    for(int x = 0; x < height; x++){
      for(int y = 0; y < width; y++){
        resulted_img.add_2_point(x, y, img[x][y] - img2.get_point(x, y));
      }
    }
    return resulted_img;
  }
  
  /**
   * @brief mul function 
   * multiplies the img2 to img 
   * @param img2: the image you want to subtract from the img
   * @return vector<vector<int32_t> > the resulted image
   */
  Image mul(std::vector<std::vector<int32_t> > &img2) const {
    assert(!img2.empty());
    assert(img2.size() == img.size());
    assert(img2[0].size() == img[0].size());
    
    Image resulted_img(height, width);
    for(int x = 0; x < height; x++){
      for(int y = 0; y < width; y++){
        resulted_img.add_2_point(x, y, img[x][y]*img2[x][y]);
      }
    }
    return resulted_img;
  }

  /**
   * @brief secondary mul function with Image as an input
   * multiplies the img2 to img 
   * @param img2: the image you want to subtract from the img
   * @return vector<vector<int32_t> > the resulted image
   */
  Image mul(Image img2) const {
    assert(img2._height() == img.size());
    assert(img2._width() == img[0].size());
  
    Image resulted_img(height, width);
    for(int x = 0; x < height; x++){
      for(int y = 0; y < width; y++){
        resulted_img.add_2_point(x, y, img[x][y]*img2.get_point(x, y));
      }
    }
    return resulted_img;
  }


  /**
  * @brief apply_filter2d function
  * @param filter: 3x3 kernel to be applied to the image
  * @return vector<vector<int32_t> > the resulted image
  */
  Image apply_filter2d(std::vector<std::vector<int32_t> > &filter) const{
    Image resulted_img(height, width);
    for(int x = 0; x<height; x++){
      for(int y = 0; y<width; y++){
        resulted_img.add_2_point(x, y, img[x][y]*filter[1][1]);
        if(y - 1 >= 0){
          resulted_img.add_2_point(x, y, img[x][y - 1]*filter[1][0]);
        }
        if(y + 1 < width){
          resulted_img.add_2_point(x, y, img[x][y + 1]*filter[1][2]);
          if(x + 1 < height){
            resulted_img.add_2_point(x, y, img[x + 1][y + 1]*filter[2][2]);
          }
        }
        if(x - 1 >= 0){
          resulted_img.add_2_point(x, y, img[x - 1][y]*filter[0][1]);
          if(y + 1 < width){
            resulted_img.add_2_point(x, y, img[x - 1][y + 1]*filter[0][2]);
          }
          if(y - 1 >= 0){
            resulted_img.add_2_point(x, y, img[x - 1][y - 1]*filter[0][0]);
          }
        }
        if(x + 1 < height){
          resulted_img.add_2_point(x, y, img[x + 1][y]*filter[2][1]);
          if(y - 1 >= 0){
            resulted_img.add_2_point(x, y, img[x + 1][y - 1]*filter[2][0]);
          }
        }
      }
    }
    return resulted_img;
  }
};

#endif
