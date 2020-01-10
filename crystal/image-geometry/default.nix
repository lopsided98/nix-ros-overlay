
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, opencv3, sensor-msgs }:
buildRosPackage {
  pname = "ros-crystal-image-geometry";
  version = "2.1.0";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vision_opencv-release/archive/release/crystal/image_geometry/2.1.0-0.tar.gz";
    name = "2.1.0-0.tar.gz";
    sha256 = "1fbf0988dbf901abd57568dc429988e5316f9184230dbe102d2cb783ccd7c913";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ];
  propagatedBuildInputs = [ opencv3 sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''`image_geometry` contains C++ and Python libraries for interpreting images
    geometrically. It interfaces the calibration parameters in sensor_msgs/CameraInfo
    messages with OpenCV functions such as image rectification, much as cv_bridge
    interfaces ROS sensor_msgs/Image with OpenCV data types.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
