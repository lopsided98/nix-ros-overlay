
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ros-ign-bridge, ros-ign-gazebo, ros-ign-gazebo-demos, ros-ign-image }:
buildRosPackage {
  pname = "ros-rolling-ros-ign";
  version = "0.244.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/rolling/ros_ign/0.244.3-2.tar.gz";
    name = "0.244.3-2.tar.gz";
    sha256 = "2d9681e6798a1be57349e448dfa9976c00797176e1f567a09a6276c98422c078";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ros-ign-bridge ros-ign-gazebo ros-ign-gazebo-demos ros-ign-image ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Meta-package containing interfaces for using ROS 2 with <a href="https://ignitionrobotics.org">Ignition</a> simulation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
