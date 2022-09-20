
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-msgs, industrial-msgs, industrial-robot-client, pythonPackages, roslaunch, rospy, sensor-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-melodic-industrial-robot-simulator";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/industrial_core-release/archive/release/melodic/industrial_robot_simulator/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "56f07602a4716e5c0a328cb37a4f7f9c976a9e1e1f331f8569422999e3122f33";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ control-msgs industrial-msgs industrial-robot-client pythonPackages.rospkg rospy sensor-msgs trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The industrial robot simulator is a stand in for industrial robot driver node(s).  It adheres to the driver specification for industrial robot controllers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
