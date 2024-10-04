
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, gz-math-vendor, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-irobot-create-toolbox";
  version = "3.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/create3_sim-release/archive/release/jazzy/irobot_create_toolbox/3.0.3-1.tar.gz";
    name = "3.0.3-1.tar.gz";
    sha256 = "4d26149048a67846991d768aa7184893da7819cc9482be949ad39070dacbc88b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake gz-math-vendor ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-flake8 ament-cmake-lint-cmake ament-cmake-pep257 ament-cmake-uncrustify ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ rclcpp ];
  nativeBuildInputs = [ ament-cmake gz-math-vendor ];

  meta = {
    description = "Components and helpers for the iRobot(R) Create(R) 3 Educational Robot.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
