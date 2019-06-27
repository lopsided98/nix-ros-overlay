
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joy-teleop, sensor-msgs, joy, pythonPackages, catkin, uuv-thruster-manager, uuv-gazebo-ros-plugins-msgs, rospy, std-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-uuv-teleop";
  version = "0.6.12";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/lunar/uuv_teleop/0.6.12-0.tar.gz;
    sha256 = "0c644d6ff0d14a599b7b80b7468c9f8221d6ebc291d61465c9fb59dc59c00400";
  };

  propagatedBuildInputs = [ joy-teleop pythonPackages.numpy sensor-msgs joy uuv-thruster-manager uuv-gazebo-ros-plugins-msgs rospy std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS nodes to generate command topics for vehicles and manipulators using a joystick input'';
    license = with lib.licenses; [ asl20 ];
  };
}
