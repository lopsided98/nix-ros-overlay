
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, kuka-resources, moveit, moveit-planners, robot-state-publisher, rviz2, urdf, xacro }:
buildRosPackage {
  pname = "ros-humble-kuka-lbr-iisy-moveit-config";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_robot_descriptions-release/archive/release/humble/kuka_lbr_iisy_moveit_config/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "18aaadbdf086add4fe920d23a6771fb4e57f9a018d96737b3b5eedf81b060afa";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ controller-manager kuka-resources moveit moveit-planners robot-state-publisher rviz2 urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Package containing moveit configurations for KUKA LBR iisy family";
    license = with lib.licenses; [ asl20 ];
  };
}
