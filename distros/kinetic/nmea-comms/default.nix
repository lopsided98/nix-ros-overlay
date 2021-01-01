
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nmea-msgs, roscpp, roslaunch, roslint, rostest }:
buildRosPackage {
  pname = "ros-kinetic-nmea-comms";
  version = "1.1.0";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/nmea_comms-release/archive/release/kinetic/nmea_comms/1.1.0-0.tar.gz";
    name = "1.1.0-0.tar.gz";
    sha256 = "50ef1deacdb9b1bc3f9fa5251264b1a8e7e3fb495828b1e6c47db086a20f5716";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch roslint rostest ];
  propagatedBuildInputs = [ nmea-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The nmea_comms package provides helper nodes for transmitting and receiving
    the NMEA sentences.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
