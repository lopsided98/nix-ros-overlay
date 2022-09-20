
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, ignition, rclcpp }:
buildRosPackage {
  pname = "ros-galactic-irobot-create-toolbox";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/create3_sim-release/archive/release/galactic/irobot_create_toolbox/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "9c33925f0bbbf2e800375664aca44d2e7e13490d50f9683d771ef6fc458f9169";
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
