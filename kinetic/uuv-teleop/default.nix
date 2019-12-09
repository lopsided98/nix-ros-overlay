
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joy, sensor-msgs, uuv-gazebo-ros-plugins-msgs, geometry-msgs, std-msgs, uuv-thruster-manager, pythonPackages, tf, catkin, joy-teleop, rospy }:
buildRosPackage {
  pname = "ros-kinetic-uuv-teleop";
  version = "0.6.13";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/uuv_simulator-release/archive/release/kinetic/uuv_teleop/0.6.13-0.tar.gz";
    name = "0.6.13-0.tar.gz";
    sha256 = "933c0f9d3d4ccfcc0fe3a19ec7cd8703e3a6a0f5718e0beb9bf06736d98021bd";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joy pythonPackages.numpy sensor-msgs uuv-gazebo-ros-plugins-msgs geometry-msgs std-msgs uuv-thruster-manager tf joy-teleop rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS nodes to generate command topics for vehicles and manipulators using a joystick input'';
    license = with lib.licenses; [ asl20 ];
  };
}
