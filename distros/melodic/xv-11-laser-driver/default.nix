
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-xv-11-laser-driver";
  version = "0.3.0";

  src = fetchurl {
    url = "https://github.com/rohbotics/xv_11_laser_driver-release/archive/release/melodic/xv_11_laser_driver/0.3.0-0.tar.gz";
    name = "0.3.0-0.tar.gz";
    sha256 = "7c6485e8b062b95fd61b2eceb47f042f5d069f1c6aad947f5c237f8968ec595c";
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
