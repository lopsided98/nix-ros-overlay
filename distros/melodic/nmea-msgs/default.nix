
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-nmea-msgs";
  version = "1.1.0";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/nmea_msgs-release/archive/release/melodic/nmea_msgs/1.1.0-0.tar.gz";
    name = "1.1.0-0.tar.gz";
    sha256 = "40ed33263afe8cac7ccc4b58c3458cbda636f9e4ac54475b754a3c869105ba14";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The nmea_msgs package contains messages related to data in the NMEA format.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
