
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, sensor-msgs, ament-cmake-ros, python3Packages, opencv3, ament-lint-common, python-cmake-module, ament-cmake-gtest, ament-cmake-pytest, ament-index-python, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-cv-bridge";
  version = "2.1.0";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vision_opencv-release/archive/release/crystal/cv_bridge/2.1.0-0.tar.gz";
    name = "2.1.0-0.tar.gz";
    sha256 = "13c70c9ab1a1a243b1e8c6cd77384e9f037ef7e5b0daf94e1d70ffc6dda2ce53";
  };

  buildType = "ament_cmake";
  buildInputs = [ sensor-msgs boost python3Packages.numpy opencv3 ];
  checkInputs = [ ament-lint-common python3Packages.opencv3 ament-cmake-gtest ament-cmake-pytest ament-lint-auto ];
  propagatedBuildInputs = [ sensor-msgs boost python3Packages.numpy opencv3 ament-index-python ];
  nativeBuildInputs = [ ament-cmake-ros python-cmake-module ];

  meta = {
    description = ''This contains CvBridge, which converts between ROS2
    Image messages and OpenCV images.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
