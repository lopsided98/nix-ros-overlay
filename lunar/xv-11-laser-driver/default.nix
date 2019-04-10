
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, roscpp, boost, catkin }:
buildRosPackage {
  pname = "ros-lunar-xv-11-laser-driver";
  version = "0.3.0";

  src = fetchurl {
    url = https://github.com/rohbotics/xv_11_laser_driver-release/archive/release/lunar/xv_11_laser_driver/0.3.0-0.tar.gz;
    sha256 = "1173b4ec9cb72d0c5ff49e7cac788766535969be82de33997badd2f9e04481b7";
  };

  buildInputs = [ sensor-msgs roscpp ];
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Neato XV-11 Laser Driver. This driver works with the laser when it is removed from the XV-11 Robot as opposed to reading scans from the Neato's USB port.'';
    #license = lib.licenses.BSD;
  };
}
