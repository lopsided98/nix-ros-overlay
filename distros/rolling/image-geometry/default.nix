
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-cmake-ros, opencv, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-image-geometry";
  version = "3.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vision_opencv-release/archive/release/rolling/image_geometry/3.4.0-1.tar.gz";
    name = "3.4.0-1.tar.gz";
    sha256 = "8c069e621f0782bd9f6f3a52c3f83cdd1648e7d374aec6808244e6ccd74d8a87";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ament-cmake-ros ];
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
