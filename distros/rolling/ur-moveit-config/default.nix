
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, launch, launch-ros, moveit-kinematics, moveit-planners-ompl, moveit-ros-move-group, moveit-ros-visualization, moveit-servo, moveit-simple-controller-manager, rviz2, ur-description, urdf, warehouse-ros-sqlite, xacro }:
buildRosPackage {
  pname = "ros-rolling-ur-moveit-config";
  version = "2.3.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/rolling/ur_moveit_config/2.3.1-2.tar.gz";
    name = "2.3.1-2.tar.gz";
    sha256 = "32f9565cffdd00a59d67c8f2df5e4d70f30d58be49607f2cb78a74b81e85e8e4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  propagatedBuildInputs = [ launch launch-ros moveit-kinematics moveit-planners-ompl moveit-ros-move-group moveit-ros-visualization moveit-servo moveit-simple-controller-manager rviz2 ur-description urdf warehouse-ros-sqlite xacro ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = ''An example package with MoveIt2 configurations for UR robots.'';
    license = with lib.licenses; [ asl20 ];
  };
}
