
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joy-teleop, sensor-msgs, joy, pythonPackages, catkin, uuv-thruster-manager, uuv-gazebo-ros-plugins-msgs, rospy, std-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-uuv-teleop";
  version = "0.6.12";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/melodic/uuv_teleop/0.6.12-0.tar.gz;
    sha256 = "9928e88dbd74aa8548544777e90bea6dd7bf45da1d24d60072b38d97080cc0cc";
  };

  propagatedBuildInputs = [ joy-teleop pythonPackages.numpy sensor-msgs joy uuv-thruster-manager uuv-gazebo-ros-plugins-msgs rospy std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS nodes to generate command topics for vehicles and manipulators using a joystick input'';
    license = with lib.licenses; [ asl20 ];
  };
}
