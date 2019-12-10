
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-index-python, ament-lint-auto, ament-lint-common, boost, opencv3, python-cmake-module, python3Packages, sensor-msgs }:
buildRosPackage {
  pname = "ros-eloquent-cv-bridge";
  version = "2.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vision_opencv-release/archive/release/eloquent/cv_bridge/2.1.3-1.tar.gz";
    name = "2.1.3-1.tar.gz";
    sha256 = "2556666f3b3a83fba7c394b38bd9fba97a6a52b00eba3696d90b7d73ed57ff8d";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common python3Packages.opencv3 ];
  propagatedBuildInputs = [ ament-index-python boost opencv3 python3Packages.numpy sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros python-cmake-module ];

  meta = {
    description = ''This contains CvBridge, which converts between ROS2
    Image messages and OpenCV images.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
