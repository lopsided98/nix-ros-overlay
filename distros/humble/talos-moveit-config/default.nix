
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, launch-pal, moveit-configs-utils, moveit-kinematics, moveit-planners-ompl, moveit-ros-move-group, moveit-ros-perception, moveit-ros-visualization, moveit-simple-controller-manager, talos-description }:
buildRosPackage {
  pname = "ros-humble-talos-moveit-config";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/talos_moveit_config-release/archive/release/humble/talos_moveit_config/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "7e7d028687db01c580f073fa9fb64e286ae49fc55c062f50b6aa1d3cab0924c9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  propagatedBuildInputs = [ launch-pal moveit-configs-utils moveit-kinematics moveit-planners-ompl moveit-ros-move-group moveit-ros-perception moveit-ros-visualization moveit-simple-controller-manager talos-description ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "An automatically generated package with all the configuration and launch files for using the talos with the MoveIt! Motion Planning Framework";
    license = with lib.licenses; [ asl20 ];
  };
}
