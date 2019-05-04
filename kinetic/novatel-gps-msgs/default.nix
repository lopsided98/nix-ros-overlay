
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-novatel-gps-msgs";
  version = "3.7.0";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/novatel_gps_driver-release/archive/release/kinetic/novatel_gps_msgs/3.7.0-0.tar.gz;
    sha256 = "74bd3cf67b5c9cee6061658251f8927d87daa1e3204aeea557054aeb52ee5c35";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for proprietary (non-NMEA) sentences from Novatel GPS receivers.'';
    license = with lib.licenses; [ "Southwest Research Institute Proprietary" ];
  };
}
