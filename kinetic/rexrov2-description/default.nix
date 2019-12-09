
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xacro, uuv-sensor-ros-plugins, uuv-descriptions, robot-state-publisher, uuv-gazebo-ros-plugins, uuv-assistants, catkin, rosunit, gazebo-ros-control, gazebo-ros, rostest }:
buildRosPackage {
  pname = "ros-kinetic-rexrov2-description";
  version = "0.1.3";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/rexrov2-release/archive/release/kinetic/rexrov2_description/0.1.3-0.tar.gz";
    name = "0.1.3-0.tar.gz";
    sha256 = "e67dd37396632252f8dfa6ebd80242e2be6a417f5efbaf7577fd1650f29135ca";
  };

  buildType = "catkin";
  checkInputs = [ xacro rostest rosunit ];
  propagatedBuildInputs = [ xacro uuv-sensor-ros-plugins uuv-gazebo-ros-plugins robot-state-publisher uuv-descriptions uuv-assistants gazebo-ros-control gazebo-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The robot description files for the RexROV 2 underwater vehicle'';
    license = with lib.licenses; [ asl20 ];
  };
}
