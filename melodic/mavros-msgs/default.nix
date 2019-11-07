
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, geographic-msgs, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-mavros-msgs";
  version = "0.33.0-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavros-release/archive/release/melodic/mavros_msgs/0.33.0-1.tar.gz";
    name = "0.33.0-1.tar.gz";
    sha256 = "295ad7d61aeacb2bea8b053b24999208ecea25604271d7b412bba3657d87a909";
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
