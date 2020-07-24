
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ros-ign-bridge, ros-ign-gazebo, ros-ign-gazebo-demos, ros-ign-image }:
buildRosPackage {
  pname = "ros-foxy-ros-ign";
  version = "0.221.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/foxy/ros_ign/0.221.0-1.tar.gz";
    name = "0.221.0-1.tar.gz";
    sha256 = "172b71011a05d9df803c732528a704aaed089152e288d79dcd582aa456c053a0";
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
