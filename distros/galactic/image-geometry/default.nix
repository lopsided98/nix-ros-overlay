
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-cmake-ros, opencv, sensor-msgs }:
buildRosPackage {
  pname = "ros-galactic-image-geometry";
  version = "3.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vision_opencv-release/archive/release/galactic/image_geometry/3.1.3-1.tar.gz";
    name = "3.1.3-1.tar.gz";
    sha256 = "90364b6de59a1624208d4f775a09c86b11711f717f9eac86265a8bbe98133798";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ];
  propagatedBuildInputs = [ opencv sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-python ament-cmake-ros ];

  meta = {
    description = ''`image_geometry` contains C++ and Python libraries for interpreting images
    geometrically. It interfaces the calibration parameters in sensor_msgs/CameraInfo
    messages with OpenCV functions such as image rectification, much as cv_bridge
    interfaces ROS sensor_msgs/Image with OpenCV data types.'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
