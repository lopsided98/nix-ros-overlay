
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, geometry-msgs, gz-ros2-control, irobot-create-common-bringup, irobot-create-description, irobot-create-gz-toolbox, irobot-create-msgs, ros-gz-bridge, ros-gz-interfaces, ros-gz-sim, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-irobot-create-gz-bringup";
  version = "3.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/create3_sim-release/archive/release/jazzy/irobot_create_gz_bringup/3.0.3-1.tar.gz";
    name = "3.0.3-1.tar.gz";
    sha256 = "8f62e5d186a676afb80f5ffc065f8262c7a5bf4034433586dad19a431ddb6e30";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-flake8 ament-cmake-lint-cmake ament-cmake-pep257 ament-cmake-uncrustify ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ geometry-msgs gz-ros2-control irobot-create-common-bringup irobot-create-description irobot-create-gz-toolbox irobot-create-msgs ros-gz-bridge ros-gz-interfaces ros-gz-sim std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Provides launch and configuration scripts for a Ignition simulated iRobot(R) Create(R) 3 Educational Robot.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
