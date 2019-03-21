
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-novatel-gps-msgs";
  version = "3.6.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/novatel_gps_driver-release/archive/release/melodic/novatel_gps_msgs/3.6.0-0.tar.gz;
    sha256 = "377982826fa5277a2d21a75091c9c8c24100d1289868ae222934c80e3ad3054b";
  };

  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ std-msgs catkin message-generation ];

  meta = {
    description = ''Messages for proprietary (non-NMEA) sentences from Novatel GPS receivers.'';
    #license = lib.licenses.Southwest Research Institute Proprietary;
  };
}
