
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roscpp-serialization }:
buildRosPackage {
  pname = "ros-melodic-ublox-serialization";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/KumarRobotics/ublox-release/archive/release/melodic/ublox_serialization/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "9d1b442a0d36838ab40081565a45e9ad4e736691bee01fe271a457c58601eff8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp roscpp-serialization ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ublox_serialization provides header files for serialization of ROS messages to and from u-blox message format.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
