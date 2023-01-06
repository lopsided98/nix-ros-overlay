
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, moveit-kinematics, moveit-planners-ompl, moveit-ros-visualization, rviz2, urdf, xacro }:
buildRosPackage {
  pname = "ros-foxy-ur-moveit-config";
  version = "2.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/foxy/ur_moveit_config/2.0.2-2.tar.gz";
    name = "2.0.2-2.tar.gz";
    sha256 = "8ab9b671f0e3eebc811e21f8924417313dfab467bbf60861d6eab6a293c14eb2";
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
