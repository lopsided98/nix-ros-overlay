
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, geometry-msgs, gz-ros2-control, irobot-create-common-bringup, irobot-create-description, irobot-create-gz-toolbox, irobot-create-msgs, ros-gz-bridge, ros-gz-interfaces, ros-gz-sim, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-irobot-create-gz-bringup";
  version = "3.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/create3_sim-release/archive/release/jazzy/irobot_create_gz_bringup/3.0.2-2.tar.gz";
    name = "3.0.2-2.tar.gz";
    sha256 = "9fe850e45015101fd5fa1871158e09b3d96ddc52fb501b11d5a63b4f50e53586";
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
