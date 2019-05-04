
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, uuv-gazebo-ros-plugins, uuv-sensor-ros-plugins, uuv-assistants, xacro, uuv-descriptions, catkin, rostest, robot-state-publisher, rosunit, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-kinetic-rexrov2-description";
  version = "0.1.3";

  src = fetchurl {
    url = https://github.com/uuvsimulator/rexrov2-release/archive/release/kinetic/rexrov2_description/0.1.3-0.tar.gz;
    sha256 = "e67dd37396632252f8dfa6ebd80242e2be6a417f5efbaf7577fd1650f29135ca";
  };

  checkInputs = [ rostest xacro rosunit ];
  propagatedBuildInputs = [ gazebo-ros uuv-gazebo-ros-plugins uuv-sensor-ros-plugins uuv-assistants uuv-descriptions robot-state-publisher xacro gazebo-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The robot description files for the RexROV 2 underwater vehicle'';
    license = with lib.licenses; [ asl20 ];
  };
}
