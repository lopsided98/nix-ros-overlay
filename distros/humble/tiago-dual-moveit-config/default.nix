
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, launch-pal, moveit-configs-utils, moveit-kinematics, moveit-planners-ompl, moveit-ros-control-interface, moveit-ros-move-group, moveit-ros-perception, moveit-ros-visualization, tiago-dual-description }:
buildRosPackage {
  pname = "ros-humble-tiago-dual-moveit-config";
  version = "2.0.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tiago_dual_moveit_config-release/archive/release/humble/tiago_dual_moveit_config/2.0.11-1.tar.gz";
    name = "2.0.11-1.tar.gz";
    sha256 = "57170864176b6451707431361aaa496095484bdf0eb2aa342397545ccd76c145";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ launch-pal moveit-configs-utils moveit-kinematics moveit-planners-ompl moveit-ros-control-interface moveit-ros-move-group moveit-ros-perception moveit-ros-visualization tiago-dual-description ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "An automatically generated package with all the configuration and launch files for using the tiago dual with the MoveIt Motion Planning Framework";
    license = with lib.licenses; [ asl20 ];
  };
}
