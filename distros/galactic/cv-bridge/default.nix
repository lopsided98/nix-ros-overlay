
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-index-python, ament-lint-auto, ament-lint-common, boost, opencv, python-cmake-module, python3Packages, rcpputils, sensor-msgs }:
buildRosPackage {
  pname = "ros-galactic-cv-bridge";
  version = "3.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vision_opencv-release/archive/release/galactic/cv_bridge/3.1.2-1.tar.gz";
    name = "3.1.2-1.tar.gz";
    sha256 = "c8bceea0cf7b9f98ea8a083a58fe1fa3bb4de6a80c287ba1d408b2508c21f924";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python boost opencv python3Packages.numpy python3Packages.opencv3 rcpputils sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros python-cmake-module ];

  meta = {
    description = ''This contains CvBridge, which converts between ROS2
    Image messages and OpenCV images.'';
    license = with lib.licenses; [ asl20 bsdOriginal ];
  };
}
