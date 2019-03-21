
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-novatel-gps-msgs";
  version = "3.7.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/novatel_gps_driver-release/archive/release/melodic/novatel_gps_msgs/3.7.0-0.tar.gz;
    sha256 = "b7b44054b32cbdfbf30134b7af3c8c9d1ec0763872d7e230c9a7eaac0f1a317d";
  };

  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ std-msgs catkin message-generation ];

  meta = {
    description = ''Messages for proprietary (non-NMEA) sentences from Novatel GPS receivers.'';
    #license = lib.licenses.Southwest Research Institute Proprietary;
  };
}
