
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ros-ign-bridge, ros-ign-gazebo, ros-ign-gazebo-demos, ros-ign-image }:
buildRosPackage {
  pname = "ros-galactic-ros-ign";
  version = "0.233.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/galactic/ros_ign/0.233.1-5.tar.gz";
    name = "0.233.1-5.tar.gz";
    sha256 = "ec1b36512b032c9887f59594e708055976f6222ac4fc4d71b2d09459ea062ae8";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ros-ign-bridge ros-ign-gazebo ros-ign-gazebo-demos ros-ign-image ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Meta-package containing interfaces for using ROS 2 with <a href="https://ignitionrobotics.org">Ignition</a> simulation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
