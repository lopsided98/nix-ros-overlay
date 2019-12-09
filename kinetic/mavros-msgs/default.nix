
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, message-runtime, std-msgs, catkin, geographic-msgs, message-generation }:
buildRosPackage {
  pname = "ros-kinetic-mavros-msgs";
  version = "0.33.3-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavros-release/archive/release/kinetic/mavros_msgs/0.33.3-1.tar.gz";
    name = "0.33.3-1.tar.gz";
    sha256 = "a7dfb08ce91ede68db275535074dc2eee791be330833e885a8e9cf41fe81c62b";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs std-msgs geographic-msgs message-generation ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs std-msgs geographic-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''mavros_msgs defines messages for <a href="http://wiki.ros.org/mavros">MAVROS</a>.'';
    license = with lib.licenses; [ gpl3 lgpl2 bsdOriginal ];
  };
}
