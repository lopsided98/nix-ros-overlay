
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, ament-cmake-ros, opencv3, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python }:
buildRosPackage {
  pname = "ros-eloquent-image-geometry";
  version = "2.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vision_opencv-release/archive/release/eloquent/image_geometry/2.1.3-1.tar.gz";
    name = "2.1.3-1.tar.gz";
    sha256 = "3a40c79700b3efdfee78bcff30e7853ca751531f6ba94ca5102010a7006683a3";
  };

  buildType = "ament_cmake";
  buildInputs = [ sensor-msgs opencv3 ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ];
  propagatedBuildInputs = [ sensor-msgs opencv3 ];
  nativeBuildInputs = [ ament-cmake-ros ament-cmake-python ];

  meta = {
    description = ''`image_geometry` contains C++ and Python libraries for interpreting images
    geometrically. It interfaces the calibration parameters in sensor_msgs/CameraInfo
    messages with OpenCV functions such as image rectification, much as cv_bridge
    interfaces ROS sensor_msgs/Image with OpenCV data types.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
