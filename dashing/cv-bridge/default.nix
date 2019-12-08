
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-pytest, ament-cmake-ros, boost, ament-lint-common, sensor-msgs, ament-cmake-gtest, python-cmake-module, python3Packages, ament-index-python, ament-lint-auto, opencv3 }:
buildRosPackage {
  pname = "ros-dashing-cv-bridge";
  version = "2.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vision_opencv-release/archive/release/dashing/cv_bridge/2.1.3-1.tar.gz";
    name = "2.1.3-1.tar.gz";
    sha256 = "7d8c362d9df4e63302b346cc187549171afe07d8cae4dd0996750961970e4960";
  };

  buildType = "ament_cmake";
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
