
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-index-python, ament-lint-auto, ament-lint-common, boost, opencv, python-cmake-module, python3Packages, rclcpp, rcpputils, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-cv-bridge";
  version = "4.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vision_opencv-release/archive/release/jazzy/cv_bridge/4.1.0-1.tar.gz";
    name = "4.1.0-1.tar.gz";
    sha256 = "079639da54f92145f428636baf726d06ecf50652ad3a2de62a16e60e57ebb49f";
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
