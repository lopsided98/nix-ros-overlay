
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, kuka-resources, moveit, moveit-planners, robot-state-publisher, rviz2, urdf, xacro }:
buildRosPackage {
  pname = "ros-humble-kuka-kr-moveit-config";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_robot_descriptions-release/archive/release/humble/kuka_kr_moveit_config/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "ff9e8e555d9d7ad0d452e410f13fe278536870b8bc345e4cd3dd3ca4f878068e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ controller-manager kuka-resources moveit moveit-planners robot-state-publisher rviz2 urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Package containing moveit configurations for KUKA LBR iiwa family";
    license = with lib.licenses; [ asl20 ];
  };
}
