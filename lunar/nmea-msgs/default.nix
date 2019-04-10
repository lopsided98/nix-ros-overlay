
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-lunar-nmea-msgs";
  version = "1.1.0";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/nmea_msgs-release/archive/release/lunar/nmea_msgs/1.1.0-0.tar.gz;
    sha256 = "6c10c3e6c23c5bd26135891954764ad763aa47fdab06c94c240dcc737d4d2489";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The nmea_msgs package contains messages related to data in the NMEA format.'';
    #license = lib.licenses.BSD;
  };
}
