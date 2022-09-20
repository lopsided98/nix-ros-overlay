
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, joy, joy-teleop, pythonPackages, rospy, sensor-msgs, std-msgs, tf, uuv-gazebo-ros-plugins-msgs, uuv-thruster-manager }:
buildRosPackage {
  pname = "ros-melodic-uuv-teleop";
  version = "0.6.13";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/uuv_simulator-release/archive/release/melodic/uuv_teleop/0.6.13-0.tar.gz";
    name = "0.6.13-0.tar.gz";
    sha256 = "f3bae248754ff04b19bfb6f9575218cc77f9a682426fd3716082098ea055ddfd";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs joy joy-teleop pythonPackages.numpy rospy sensor-msgs std-msgs tf uuv-gazebo-ros-plugins-msgs uuv-thruster-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS nodes to generate command topics for vehicles and manipulators using a joystick input'';
    license = with lib.licenses; [ asl20 ];
  };
}
