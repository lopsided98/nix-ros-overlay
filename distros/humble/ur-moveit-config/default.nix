
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, launch, launch-ros, moveit-kinematics, moveit-planners-ompl, moveit-ros-move-group, moveit-ros-visualization, moveit-servo, moveit-simple-controller-manager, rviz2, ur-description, urdf, warehouse-ros-sqlite, xacro }:
buildRosPackage {
  pname = "ros-humble-ur-moveit-config";
  version = "2.13.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/humble/ur_moveit_config/2.13.2-1.tar.gz";
    name = "2.13.2-1.tar.gz";
    sha256 = "6df8a5518d76f815617b20ea7b656a97c5b0b1d27a322e1afbdd3bdd85eb2be9";
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
