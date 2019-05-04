
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, geographic-msgs, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-mavros-msgs";
  version = "0.29.2";

  src = fetchurl {
    url = https://github.com/mavlink/mavros-release/archive/release/kinetic/mavros_msgs/0.29.2-0.tar.gz;
    sha256 = "9f9f92c2d6e0c3397c3c4819cb9de7d0a86cfd989e3e0756c433e8272bf2a319";
  };

  buildInputs = [ sensor-msgs geographic-msgs message-generation std-msgs geometry-msgs ];
  propagatedBuildInputs = [ sensor-msgs geographic-msgs message-runtime std-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''mavros_msgs defines messages for <a href="http://wiki.ros.org/mavros">MAVROS</a>.'';
    license = with lib.licenses; [ gpl3 lgpl2 bsdOriginal ];
  };
}
