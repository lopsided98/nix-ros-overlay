
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, control-msgs, trajectory-msgs, sensor-msgs, catkin, pythonPackages, industrial-robot-client, industrial-msgs, rospy, roslaunch }:
buildRosPackage {
  pname = "ros-kinetic-industrial-robot-simulator";
  version = "0.7.0";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/industrial_core-release/archive/release/kinetic/industrial_robot_simulator/0.7.0-0.tar.gz";
    name = "0.7.0-0.tar.gz";
    sha256 = "cccf484b48e8cf7937b14418918f9110cf3b757b91534f903321de90e4a58321";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch industrial-robot-client ];
  propagatedBuildInputs = [ control-msgs pythonPackages.rospkg trajectory-msgs sensor-msgs industrial-robot-client industrial-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The industrial robot simulator is a stand in for industrial robot driver node(s).  It adheres to the driver specification for industrial robot controllers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
