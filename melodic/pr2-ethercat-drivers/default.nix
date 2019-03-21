
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ethercat-hardware, fingertip-pressure }:
buildRosPackage {
  pname = "ros-melodic-pr2-ethercat-drivers";
  version = "1.8.18";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_ethercat_drivers-release/archive/release/melodic/pr2_ethercat_drivers/1.8.18-0.tar.gz;
    sha256 = "788a0ce8f237a573f1ae50c180ea6647bf161f91f28faaf11063efcf1f81d829";
  };

  propagatedBuildInputs = [ ethercat-hardware fingertip-pressure ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This stack contains drivers for the ethercat system and the peripherals
    that connect to it: motor control boards, fingertip sensors, texture
    projector, hand accelerometer.'';
    #license = lib.licenses.BSD;
  };
}
