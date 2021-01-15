
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-kinetic-xv-11-laser-driver";
  version = "0.3.0";

  src = fetchurl {
    url = "https://github.com/rohbotics/xv_11_laser_driver-release/archive/release/kinetic/xv_11_laser_driver/0.3.0-0.tar.gz";
    name = "0.3.0-0.tar.gz";
    sha256 = "3367511ab65de9627e4c08e0ff9da72c8d88be900f6c9eb3a42dece062f9a7cb";
  };

  buildType = "catkin";
  buildInputs = [ roscpp sensor-msgs ];
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Neato XV-11 Laser Driver. This driver works with the laser when it is removed from the XV-11 Robot as opposed to reading scans from the Neato's USB port.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
