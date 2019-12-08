
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-cmake-gtest, sensor-msgs, ament-cmake-ros, ament-cmake-python, opencv3 }:
buildRosPackage {
  pname = "ros-dashing-image-geometry";
  version = "2.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vision_opencv-release/archive/release/dashing/image_geometry/2.1.3-1.tar.gz";
    name = "2.1.3-1.tar.gz";
    sha256 = "7d8caaf5318b9290ac0649b968fc0c3052d399a05534a481805eed9d95e9ef58";
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
