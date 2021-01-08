
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-msgs, industrial-msgs, industrial-robot-client, pythonPackages, roslaunch, rospy, sensor-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-melodic-industrial-robot-simulator";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/industrial_core-release/archive/release/melodic/industrial_robot_simulator/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "2bfbab889523137f608c09ad70ae7f13953e539f7999237d9296648e4d523962";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ control-msgs industrial-msgs industrial-robot-client pythonPackages.rospkg rospy sensor-msgs trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The industrial robot simulator is a stand in for industrial robot driver node(s).  It adheres to the driver specification for industrial robot controllers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
