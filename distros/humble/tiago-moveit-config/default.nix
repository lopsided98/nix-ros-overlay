
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, launch-pal, moveit-configs-utils, moveit-kinematics, moveit-planners-ompl, moveit-ros-control-interface, moveit-ros-move-group, moveit-ros-perception, moveit-ros-visualization, tiago-description }:
buildRosPackage {
  pname = "ros-humble-tiago-moveit-config";
  version = "3.0.18-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_moveit_config-release/archive/release/humble/tiago_moveit_config/3.0.18-1.tar.gz";
    name = "3.0.18-1.tar.gz";
    sha256 = "4fd9f2ff9ef4db257ac155bf49155337bd8c4c3ca25156c26fabd942e76d6fc2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ launch-pal moveit-configs-utils moveit-kinematics moveit-planners-ompl moveit-ros-control-interface moveit-ros-move-group moveit-ros-perception moveit-ros-visualization tiago-description ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "An automatically generated package with all the configuration and launch files for using the tiago with the MoveIt Motion Planning Framework";
    license = with lib.licenses; [ asl20 ];
  };
}
