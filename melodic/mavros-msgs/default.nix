
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, geographic-msgs, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-mavros-msgs";
  version = "0.32.1-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavros-release/archive/release/melodic/mavros_msgs/0.32.1-1.tar.gz";
    name = "0.32.1-1.tar.gz";
    sha256 = "0facbb64f48db4b269c2af27ad9de0e2f1b4e0125e508626fcdb60f06cc65283";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geographic-msgs message-generation std-msgs geometry-msgs ];
  propagatedBuildInputs = [ sensor-msgs geographic-msgs message-runtime std-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''mavros_msgs defines messages for <a href="http://wiki.ros.org/mavros">MAVROS</a>.'';
    license = with lib.licenses; [ gpl3 lgpl2 bsdOriginal ];
  };
}
