
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-index-python, ament-lint-auto, ament-lint-common, boost, opencv, python-cmake-module, python3Packages, sensor-msgs }:
buildRosPackage {
  pname = "ros-galactic-cv-bridge";
  version = "2.2.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vision_opencv-release/archive/release/galactic/cv_bridge/2.2.1-2.tar.gz";
    name = "2.2.1-2.tar.gz";
    sha256 = "7eae3f6833c74c0b89633af935da4dcc84df077a8f212864b2a82e5b2e627f8b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros python-cmake-module ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common python3Packages.opencv3 ];
  propagatedBuildInputs = [ ament-index-python boost opencv python3Packages.numpy sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros python-cmake-module ];

  meta = {
    description = ''This contains CvBridge, which converts between ROS2
    Image messages and OpenCV images.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
