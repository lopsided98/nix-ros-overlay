
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ethercat-hardware, fingertip-pressure }:
buildRosPackage {
  pname = "ros-kinetic-pr2-ethercat-drivers";
  version = "1.8.18-r1";

  src = fetchurl {
    url = "https://github.com/PR2-prime/pr2_ethercat_drivers-release/archive/release/kinetic/pr2_ethercat_drivers/1.8.18-1.tar.gz";
    name = "1.8.18-1.tar.gz";
    sha256 = "081a05ef535259c569173eb5bff18aa0bdada609dc1478195ea7d0bbb7418b45";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ethercat-hardware fingertip-pressure ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This stack contains drivers for the ethercat system and the peripherals
    that connect to it: motor control boards, fingertip sensors, texture
    projector, hand accelerometer.'';
    license = with lib.licenses; [ bsdOriginal gpl1 ];
  };
}
