
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, kuka-resources, moveit, moveit-planners, robot-state-publisher, rviz2, urdf, xacro }:
buildRosPackage {
  pname = "ros-jazzy-kuka-kr-moveit-config";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_robot_descriptions-release/archive/release/jazzy/kuka_kr_moveit_config/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "439b7b8979224abccbe68a9ca6af2e5f3b0802c17fee3179dcabb3ce6c31c40a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ rviz2 ];
  propagatedBuildInputs = [ controller-manager kuka-resources moveit moveit-planners robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Package containing moveit configurations for KUKA LBR iiwa family";
    license = with lib.licenses; [ asl20 ];
  };
}
