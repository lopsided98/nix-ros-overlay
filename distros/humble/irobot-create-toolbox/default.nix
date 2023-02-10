
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, ignition, rclcpp }:
buildRosPackage {
  pname = "ros-humble-irobot-create-toolbox";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/create3_sim-release/archive/release/humble/irobot_create_toolbox/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "90e9bceab4c14054f931172a3a90270ef1fd73bd56a8f1e09f62f27b74246026";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-flake8 ament-cmake-lint-cmake ament-cmake-pep257 ament-cmake-uncrustify ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ ignition.math6 rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Components and helpers for the iRobot(R) Create(R) 3 Educational Robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
