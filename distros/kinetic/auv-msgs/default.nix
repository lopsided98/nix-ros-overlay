
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geographic-msgs, geometry-msgs, message-generation, message-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-auv-msgs";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/oceansystemslab/auv_msgs-release/archive/release/kinetic/auv_msgs/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "32cace62288e30f83779400b442940ff2daaea913956dfd91d3bf5ca849069dd";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ geographic-msgs geometry-msgs message-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides message types commonly used with Autonomous Underwater Vehicles'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
