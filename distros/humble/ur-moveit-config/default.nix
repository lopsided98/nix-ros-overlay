
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, launch, launch-ros, moveit-kinematics, moveit-planners-ompl, moveit-ros-move-group, moveit-ros-visualization, moveit-servo, moveit-simple-controller-manager, rviz2, ur-description, urdf, warehouse-ros-sqlite, xacro }:
buildRosPackage {
  pname = "ros-humble-ur-moveit-config";
  version = "2.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/humble/ur_moveit_config/2.8.1-1.tar.gz";
    name = "2.8.1-1.tar.gz";
    sha256 = "e4f3848fb4c797f876892d1cd7e95987bf687e9d0929e2194e710a0898c342d2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  propagatedBuildInputs = [ launch launch-ros moveit-kinematics moveit-planners-ompl moveit-ros-move-group moveit-ros-visualization moveit-servo moveit-simple-controller-manager rviz2 ur-description urdf warehouse-ros-sqlite xacro ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "An example package with MoveIt2 configurations for UR robots.";
    license = with lib.licenses; [ asl20 ];
  };
}
