
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, ignition, rclcpp }:
buildRosPackage {
  pname = "ros-galactic-irobot-create-toolbox";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/create3_sim-release/archive/release/galactic/irobot_create_toolbox/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "e10b7413e5fbd5e815c0396a373ba8868af036a7eded9f786ac75314b2a6d457";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-flake8 ament-cmake-lint-cmake ament-cmake-pep257 ament-cmake-uncrustify ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ ignition.math6 rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Components and helpers for the iRobot(R) Create(R) 3 Educational Robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
