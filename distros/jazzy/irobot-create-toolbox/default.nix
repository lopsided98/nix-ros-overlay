
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, gz-math-vendor, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-irobot-create-toolbox";
  version = "3.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/create3_sim-release/archive/release/jazzy/irobot_create_toolbox/3.0.2-2.tar.gz";
    name = "3.0.2-2.tar.gz";
    sha256 = "1fdbd7f41b14a211b2213dc7bd8999bb2ad9a97b1910d08635cb70986c97b0fd";
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
