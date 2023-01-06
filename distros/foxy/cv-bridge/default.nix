
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-index-python, ament-lint-auto, ament-lint-common, boost, opencv, python-cmake-module, python3Packages, rcpputils, sensor-msgs }:
buildRosPackage {
  pname = "ros-foxy-cv-bridge";
  version = "3.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vision_opencv-release/archive/release/foxy/cv_bridge/3.0.7-1.tar.gz";
    name = "3.0.7-1.tar.gz";
    sha256 = "d4f0782dd74d6346dfeaab6067ba71aeb1754c5016b7f4d68a5ccbf100781dde";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros python-cmake-module ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python boost opencv python3Packages.numpy python3Packages.opencv3 rcpputils sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros python-cmake-module ];

  meta = {
    description = ''This contains CvBridge, which converts between ROS2
    Image messages and OpenCV images.'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
