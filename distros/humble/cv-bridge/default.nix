
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-pytest, ament-cmake-ros, ament-index-python, ament-lint-auto, ament-lint-common, boost, opencv, python-cmake-module, python3Packages, rcpputils, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-cv-bridge";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vision_opencv-release/archive/release/humble/cv_bridge/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "849373a54ab41365551d4d0d3307bde3126df7765d26c207d0d8a3dbe81f560d";
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
