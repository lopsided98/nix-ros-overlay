
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joy-teleop, sensor-msgs, joy, pythonPackages, catkin, uuv-thruster-manager, uuv-gazebo-ros-plugins-msgs, rospy, std-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-uuv-teleop";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/kinetic/uuv_teleop/0.6.10-0.tar.gz;
    sha256 = "7c5cf11b7cc37a20cbd980a49c80e0cef82663a3ad6e72d98ab190134e784000";
  };

  propagatedBuildInputs = [ joy-teleop pythonPackages.numpy sensor-msgs joy uuv-thruster-manager uuv-gazebo-ros-plugins-msgs rospy std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS nodes to generate command topics for vehicles and manipulators using a joystick input'';
    #license = lib.licenses.Apache-2.0;
  };
}
