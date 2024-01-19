
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-xv-11-laser-driver";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/rohbotics/xv_11_laser_driver-release/archive/release/noetic/xv_11_laser_driver/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "50a7aa9f11a48f38be60f8fc05c4a8496de0f7df8488816cb89ca4712f829924";
  };

  buildType = "catkin";
  buildInputs = [ catkin roscpp sensor-msgs ];
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Neato XV-11 Laser Driver. This driver works with the laser when it is removed from the XV-11 Robot as opposed to reading scans from the Neato's USB port.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
