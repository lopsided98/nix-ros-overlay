
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, moveit-kinematics, moveit-planners-ompl, moveit-ros-visualization, rviz2, urdf, xacro }:
buildRosPackage {
  pname = "ros-foxy-ur-moveit-config";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/foxy/ur_moveit_config/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "657a1bb747f891bb180aeb4fb01b87b642d859f19aeb517ec9f70ef1710eb29d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ moveit-kinematics moveit-planners-ompl moveit-ros-visualization rviz2 urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''An example package with MoveIt2 configurations for UR robots.'';
    license = with lib.licenses; [ asl20 ];
  };
}
