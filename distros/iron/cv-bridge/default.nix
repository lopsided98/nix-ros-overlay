
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-index-python, ament-lint-auto, ament-lint-common, boost, opencv, python-cmake-module, python3Packages, rclcpp, rcpputils, sensor-msgs }:
buildRosPackage {
  pname = "ros-iron-cv-bridge";
  version = "3.4.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vision_opencv-release/archive/release/iron/cv_bridge/3.4.0-3.tar.gz";
    name = "3.4.0-3.tar.gz";
    sha256 = "0f487dfc4149c710f6fb4babc8eed9d3bc073c80a67f5e87d155e4481f0a4b46";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros python-cmake-module ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python boost opencv opencv.cxxdev python3Packages.numpy python3Packages.opencv4 rclcpp rcpputils sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros python-cmake-module ];

  meta = {
    description = ''This contains CvBridge, which converts between ROS2
    Image messages and OpenCV images.'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
