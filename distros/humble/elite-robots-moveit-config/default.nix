
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, ament-index-python, elite-robots-description, launch, launch-ros, moveit-kinematics, moveit-planners-ompl, moveit-ros-move-group, moveit-ros-visualization, moveit-servo, moveit-simple-controller-manager, python3Packages, rviz2, urdf, warehouse-ros-sqlite, xacro }:
buildRosPackage {
  pname = "ros-humble-elite-robots-moveit-config";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/EliteRobots/Elite_Robots_CS_ROS2_Driver-release/archive/release/humble/elite_robots_moveit_config/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "5964ba6503eba15d33e66df22661c90277fb11cd13b8b2df371a3015f402f735";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  propagatedBuildInputs = [ ament-index-python elite-robots-description launch launch-ros moveit-kinematics moveit-planners-ompl moveit-ros-move-group moveit-ros-visualization moveit-servo moveit-simple-controller-manager python3Packages.pyyaml rviz2 urdf warehouse-ros-sqlite xacro ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "An example package with MoveIt2 configurations for ELITE CS robots.";
    license = with lib.licenses; [ asl20 ];
  };
}
