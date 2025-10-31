
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, launch-pal, moveit-configs-utils, moveit-kinematics, moveit-planners-chomp, moveit-planners-ompl, moveit-ros-control-interface, moveit-ros-move-group, moveit-ros-perception, moveit-ros-visualization, pal-sea-arm-description }:
buildRosPackage {
  pname = "ros-humble-pal-sea-arm-moveit-config";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/pal_sea_arm_moveit_config-release/archive/release/humble/pal_sea_arm_moveit_config/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "9d040eb2690675ba576d6c82ae5781595c997cd427df1eaf5deae043ec585f52";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ launch-pal moveit-configs-utils moveit-kinematics moveit-planners-chomp moveit-planners-ompl moveit-ros-control-interface moveit-ros-move-group moveit-ros-perception moveit-ros-visualization pal-sea-arm-description ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "An automatically generated package with all the configuration and launch files for using the pal_sea_arm with the MoveIt Motion Planning Framework";
    license = with lib.licenses; [ asl20 ];
  };
}
