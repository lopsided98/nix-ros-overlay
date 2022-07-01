
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, launch, launch-ros, robot-state-publisher, rviz2, urdf, xacro }:
buildRosPackage {
  pname = "ros-foxy-ur-description";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/foxy/ur_description/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "9f1d52bce3d024f6fdfc54a9a33151fabf820ef2cfe5c453355dfeabc079f855";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ joint-state-publisher launch launch-ros robot-state-publisher rviz2 urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''URDF description for Universal Robots'';
    license = with lib.licenses; [ asl20 ];
  };
}
