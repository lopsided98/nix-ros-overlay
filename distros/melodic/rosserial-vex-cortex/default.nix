
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rospy, rosserial-client, rosserial-python }:
buildRosPackage {
  pname = "ros-melodic-rosserial-vex-cortex";
  version = "0.8.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosserial-release/archive/release/melodic/rosserial_vex_cortex/0.8.0-0.tar.gz";
    name = "0.8.0-0.tar.gz";
    sha256 = "d043417c13c7692d528e3382813c00bdd9a6da7a5dc7ea0e5da6e68e44c395c4";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rospy rosserial-client rosserial-python ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosserial for Cortex/AVR platforms.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
