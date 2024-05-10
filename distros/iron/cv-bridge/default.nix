
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-index-python, ament-lint-auto, ament-lint-common, boost, opencv, python-cmake-module, python3Packages, rclcpp, rcpputils, sensor-msgs }:
buildRosPackage {
  pname = "ros-iron-cv-bridge";
  version = "3.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vision_opencv-release/archive/release/iron/cv_bridge/3.5.0-1.tar.gz";
    name = "3.5.0-1.tar.gz";
    sha256 = "a5edc953be5b0287ae3a6dd004092832d9f30f6af9fe993789ec7b8fae6fdbe3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros python-cmake-module ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python boost opencv opencv.cxxdev python3Packages.numpy python3Packages.opencv4 rclcpp rcpputils sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros python-cmake-module ];

  meta = {
    description = "This contains CvBridge, which converts between ROS2
    Image messages and OpenCV images.";
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
