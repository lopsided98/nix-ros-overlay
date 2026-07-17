
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, kuka-resources, moveit, moveit-planners, robot-state-publisher, rviz2, urdf, xacro }:
buildRosPackage {
  pname = "ros-humble-kuka-lbr-iisy-moveit-config";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_robot_descriptions-release/archive/release/humble/kuka_lbr_iisy_moveit_config/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "383e238c80a0a6d5a378210acbf476021b1961d693e7017854283f62aad96850";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ rviz2 ];
  propagatedBuildInputs = [ controller-manager kuka-resources moveit moveit-planners robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Package containing moveit configurations for KUKA LBR iisy family";
    license = with lib.licenses; [ asl20 ];
  };
}
