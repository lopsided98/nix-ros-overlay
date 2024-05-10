
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, kuka-resources, moveit, robot-state-publisher, rviz2, urdf, xacro }:
buildRosPackage {
  pname = "ros-humble-kuka-kr-moveit-config";
  version = "0.9.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_robot_descriptions-release/archive/release/humble/kuka_kr_moveit_config/0.9.0-2.tar.gz";
    name = "0.9.0-2.tar.gz";
    sha256 = "4019abe888f55bdb9fc21259b143a681f707dd86a3441534c45e02fd3b7e0726";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ controller-manager kuka-resources moveit robot-state-publisher rviz2 urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Package containing moveit configurations for KUKA LBR iiwa family";
    license = with lib.licenses; [ asl20 ];
  };
}
