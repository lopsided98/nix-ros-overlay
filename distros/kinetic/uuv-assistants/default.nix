
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-msgs, geometry-msgs, nav-msgs, pythonPackages, roscpp, rosgraph, rospy, rostopic, sensor-msgs, tf, topic-tools, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-uuv-assistants";
  version = "0.6.13";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/uuv_simulator-release/archive/release/kinetic/uuv_assistants/0.6.13-0.tar.gz";
    name = "0.6.13-0.tar.gz";
    sha256 = "6655ea757143bc1ed802ea926118303998955e22232da7e6f219af50012ab834";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-msgs geometry-msgs nav-msgs pythonPackages.numpy roscpp rosgraph rospy rostopic sensor-msgs tf topic-tools visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tools and utilities to monitor and analyze the simulation'';
    license = with lib.licenses; [ asl20 ];
  };
}
