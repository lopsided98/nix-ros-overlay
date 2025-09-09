
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, kuka-resources, moveit, moveit-planners, robot-state-publisher, rviz2, urdf, xacro }:
buildRosPackage {
  pname = "ros-humble-kuka-lbr-iiwa-moveit-config";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_robot_descriptions-release/archive/release/humble/kuka_lbr_iiwa_moveit_config/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "3fc86b684dee9ad22e3b69e4a1db93e72c18dbf8bbdd29f045905cc29ca6f718";
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
