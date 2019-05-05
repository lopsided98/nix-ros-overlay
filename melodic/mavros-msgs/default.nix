
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, geographic-msgs, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-mavros-msgs";
  version = "0.29.2";

  src = fetchurl {
    url = https://github.com/mavlink/mavros-release/archive/release/melodic/mavros_msgs/0.29.2-0.tar.gz;
    sha256 = "80cdf9f83bf0b611e8b08201b461ca0b73909bc211c66176e64a13ee9e0143ab";
  };

  buildInputs = [ sensor-msgs geographic-msgs message-generation std-msgs geometry-msgs ];
  propagatedBuildInputs = [ sensor-msgs geographic-msgs message-runtime std-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''mavros_msgs defines messages for <a href="http://wiki.ros.org/mavros">MAVROS</a>.'';
    license = with lib.licenses; [ gpl3 lgpl2 bsdOriginal ];
  };
}
