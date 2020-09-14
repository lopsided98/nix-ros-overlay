
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosserial-client }:
buildRosPackage {
  pname = "ros-noetic-rosserial-chibios";
  version = "0.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosserial-release/archive/release/noetic/rosserial_chibios/0.9.0-1.tar.gz";
    name = "0.9.0-1.tar.gz";
    sha256 = "c96d6f7f31804561faedf88c99404decdb48217065a7d55fa521ea173eb81ae0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rosserial-client ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rosserial for ChibiOS/HAL platforms.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
