
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nmea-msgs, roscpp, roslaunch, roslint, rostest }:
buildRosPackage {
  pname = "ros-noetic-nmea-comms";
  version = "1.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/nmea_comms-release/archive/release/noetic/nmea_comms/1.2.0-3.tar.gz";
    name = "1.2.0-3.tar.gz";
    sha256 = "043ce2fedd2173e5d9fa7004aff8911555efeccb0a04150e737e149a6cdb7241";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch roslint rostest ];
  propagatedBuildInputs = [ nmea-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The nmea_comms package provides helper nodes for transmitting and receiving
    the NMEA sentences.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
