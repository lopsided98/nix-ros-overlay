
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-index-python, elite-robots-description, geometry-msgs, launch, launch-ros, moveit-kinematics, moveit-planners-ompl, moveit-ros-move-group, moveit-ros-planning-interface, moveit-ros-visualization, moveit-servo, moveit-simple-controller-manager, python3Packages, rclcpp, rviz2, tf2, tf2-geometry-msgs, urdf, warehouse-ros-sqlite, xacro }:
buildRosPackage {
  pname = "ros-humble-elite-robots-moveit-config";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/EliteRobots/Elite_Robots_CS_ROS2_Driver-release/archive/release/humble/elite_robots_moveit_config/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "b21379171f1c75757a2d095a3385ea719e876cb7a5ef547640613ed22df2d1f2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  propagatedBuildInputs = [ ament-index-python elite-robots-description geometry-msgs launch launch-ros moveit-kinematics moveit-planners-ompl moveit-ros-move-group moveit-ros-planning-interface moveit-ros-visualization moveit-servo moveit-simple-controller-manager python3Packages.pyyaml rclcpp rviz2 tf2 tf2-geometry-msgs urdf warehouse-ros-sqlite xacro ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "An example package with MoveIt2 configurations for ELITE CS robots.";
    license = with lib.licenses; [ asl20 ];
  };
}
