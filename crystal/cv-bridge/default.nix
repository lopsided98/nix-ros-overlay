
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-cmake-ros, boost, ament-lint-common, sensor-msgs, ament-cmake-gtest, python-cmake-module, python3Packages, ament-index-python, ament-lint-auto, opencv3 }:
buildRosPackage {
  pname = "ros-crystal-cv-bridge";
  version = "2.1.0";

  src = fetchurl {
    url = https://github.com/ros2-gbp/vision_opencv-release/archive/release/crystal/cv_bridge/2.1.0-0.tar.gz;
    sha256 = "13c70c9ab1a1a243b1e8c6cd77384e9f037ef7e5b0daf94e1d70ffc6dda2ce53";
  };

  buildInputs = [ python3Packages.numpy opencv3 boost sensor-msgs ];
  checkInputs = [ ament-cmake-pytest python3Packages.opencv3 ament-lint-common ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ boost sensor-msgs ament-index-python python3Packages.numpy opencv3 ];
  nativeBuildInputs = [ python-cmake-module ament-cmake-ros ];

  meta = {
    description = ''This contains CvBridge, which converts between ROS2
    Image messages and OpenCV images.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
