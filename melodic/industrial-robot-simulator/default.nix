
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, control-msgs, trajectory-msgs, sensor-msgs, catkin, pythonPackages, industrial-robot-client, industrial-msgs, rospy, roslaunch }:
buildRosPackage {
  pname = "ros-melodic-industrial-robot-simulator";
  version = "0.7.0";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/industrial_core-release/archive/release/melodic/industrial_robot_simulator/0.7.0-0.tar.gz";
    name = "0.7.0-0.tar.gz";
    sha256 = "48bcc0aeacff43ba149a6320ff4e61271a7f2b1aa41309d7ac6b5dce3123db6e";
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
