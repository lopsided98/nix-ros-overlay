
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, sensor-msgs, ament-cmake-ros, python3Packages, opencv3, ament-lint-common, python-cmake-module, ament-cmake-gtest, ament-cmake-pytest, ament-index-python, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-cv-bridge";
  version = "2.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vision_opencv-release/archive/release/dashing/cv_bridge/2.1.3-1.tar.gz";
    name = "2.1.3-1.tar.gz";
    sha256 = "7d8c362d9df4e63302b346cc187549171afe07d8cae4dd0996750961970e4960";
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
