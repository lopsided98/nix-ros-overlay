
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, kuka-resources, moveit, moveit-planners, robot-state-publisher, rviz2, urdf, xacro }:
buildRosPackage {
  pname = "ros-jazzy-kuka-lbr-iisy-moveit-config";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_robot_descriptions-release/archive/release/jazzy/kuka_lbr_iisy_moveit_config/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "2de67857527ad9d5faa4f82a8725660c84ad6c4e35aaa02b4484dc307b6a2837";
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
