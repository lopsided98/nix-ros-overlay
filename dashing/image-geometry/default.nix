
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-cmake-gtest, sensor-msgs, ament-cmake-ros, ament-cmake-python, opencv3 }:
buildRosPackage {
  pname = "ros-dashing-image-geometry";
  version = "2.1.2-r1";

  src = fetchurl {
    url = https://github.com/ros2-gbp/vision_opencv-release/archive/release/dashing/image_geometry/2.1.2-1.tar.gz;
    sha256 = "bfe67d90fad2392c92ffb0cc8afd12b17482259266fc93b0893e9b5c4c04fbf9";
  };

  buildType = "ament_cmake";
  buildInputs = [ sensor-msgs opencv3 ];
  checkInputs = [ ament-cmake-pytest ament-cmake-gtest ];
  propagatedBuildInputs = [ sensor-msgs opencv3 ];
  nativeBuildInputs = [ ament-cmake-python ament-cmake-ros ];

  meta = {
    description = ''`image_geometry` contains C++ and Python libraries for interpreting images
    geometrically. It interfaces the calibration parameters in sensor_msgs/CameraInfo
    messages with OpenCV functions such as image rectification, much as cv_bridge
    interfaces ROS sensor_msgs/Image with OpenCV data types.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
