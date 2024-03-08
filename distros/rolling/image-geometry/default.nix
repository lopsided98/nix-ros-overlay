
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-python, ament-cmake-ros, opencv, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-image-geometry";
  version = "3.4.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vision_opencv-release/archive/release/rolling/image_geometry/3.4.0-3.tar.gz";
    name = "3.4.0-3.tar.gz";
    sha256 = "ba92834b577852c51308b41de85733dfc3b8e1507f4ccde83b93ebb07e69a37a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ament-cmake-ros ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ];
  propagatedBuildInputs = [ opencv opencv.cxxdev sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-python ament-cmake-ros ];

  meta = {
    description = ''`image_geometry` contains C++ and Python libraries for interpreting images
    geometrically. It interfaces the calibration parameters in sensor_msgs/CameraInfo
    messages with OpenCV functions such as image rectification, much as cv_bridge
    interfaces ROS sensor_msgs/Image with OpenCV data types.'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
