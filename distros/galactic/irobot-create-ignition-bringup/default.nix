
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, geometry-msgs, irobot-create-common-bringup, irobot-create-description, irobot-create-ignition-plugins, irobot-create-ignition-toolbox, irobot-create-msgs, irobot-create-nodes, ros-ign-bridge, ros-ign-gazebo, ros-ign-interfaces, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-irobot-create-ignition-bringup";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/create3_sim-release/archive/release/galactic/irobot_create_ignition_bringup/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "2ef3fb4ae67087039d5000d2698533aec18b0335c564dffa938005ecea54624e";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-flake8 ament-cmake-lint-cmake ament-cmake-pep257 ament-cmake-uncrustify ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ geometry-msgs irobot-create-common-bringup irobot-create-description irobot-create-ignition-plugins irobot-create-ignition-toolbox irobot-create-msgs irobot-create-nodes ros-ign-bridge ros-ign-gazebo ros-ign-interfaces std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides launch and configuration scripts for a Ignition simulated iRobot(R) Create(R) 3 Educational Robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
