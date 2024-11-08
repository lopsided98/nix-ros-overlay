
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, gz-math-vendor, rclcpp }:
buildRosPackage {
  pname = "ros-jazzy-irobot-create-toolbox";
  version = "3.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/create3_sim-release/archive/release/jazzy/irobot_create_toolbox/3.0.4-1.tar.gz";
    name = "3.0.4-1.tar.gz";
    sha256 = "e012bf9d56256e0d62eb5fdb4c8366a0fb08e39b5c4866c5fc0a35ffafe2b744";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-flake8 ament-cmake-lint-cmake ament-cmake-pep257 ament-cmake-uncrustify ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ gz-math-vendor rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Components and helpers for the iRobot(R) Create(R) 3 Educational Robot.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
