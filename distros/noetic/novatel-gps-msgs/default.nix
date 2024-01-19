
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-novatel-gps-msgs";
  version = "3.9.0-r2";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/novatel_gps_driver-release/archive/release/noetic/novatel_gps_msgs/3.9.0-2.tar.gz";
    name = "3.9.0-2.tar.gz";
    sha256 = "385a28ccf1b1a41cae25d151638c9f75cee572ac0d5cd788a1c4f545a948abee";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for proprietary (non-NMEA) sentences from Novatel GPS receivers.'';
    license = with lib.licenses; [ "Southwest-Research-Institute-Proprietary" ];
  };
}
