
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-cpplint, ament-cmake-flake8, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, geometry-msgs, ign-ros2-control, irobot-create-common-bringup, irobot-create-description, irobot-create-ignition-plugins, irobot-create-ignition-toolbox, irobot-create-msgs, ros-ign-bridge, ros-ign-gazebo, ros-ign-interfaces, std-msgs }:
buildRosPackage {
  pname = "ros-humble-irobot-create-ignition-bringup";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/create3_sim-release/archive/release/humble/irobot_create_ignition_bringup/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "22ddda97dea272dcbca1d742e89abc47d4aea5c2862dcd450fac56a5f8a2037f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-cpplint ament-cmake-flake8 ament-cmake-lint-cmake ament-cmake-pep257 ament-cmake-uncrustify ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ geometry-msgs ign-ros2-control irobot-create-common-bringup irobot-create-description irobot-create-ignition-plugins irobot-create-ignition-toolbox irobot-create-msgs ros-ign-bridge ros-ign-gazebo ros-ign-interfaces std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides launch and configuration scripts for a Ignition simulated iRobot(R) Create(R) 3 Educational Robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
