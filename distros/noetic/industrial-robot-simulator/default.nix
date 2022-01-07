
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, control-msgs, industrial-msgs, industrial-robot-client, python3Packages, roslaunch, rospy, sensor-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-noetic-industrial-robot-simulator";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/industrial_core-release/archive/release/noetic/industrial_robot_simulator/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "9b42aed833f10a4293af407e24802a1bac6509abc115b20a2ef25ec7f89ead19";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ control-msgs industrial-msgs industrial-robot-client python3Packages.rospkg rospy sensor-msgs trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The industrial robot simulator is a stand in for industrial robot driver node(s).  It adheres to the driver specification for industrial robot controllers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
