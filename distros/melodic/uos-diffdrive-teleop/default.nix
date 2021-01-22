
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, ps3joy, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-uos-diffdrive-teleop";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/uos-tools/archive/release/melodic/uos_diffdrive_teleop/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "ed2ad1015d480ccef3959ab73923dd4100fb7f549e5827e15a56a3bfdc31c593";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs ps3joy roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''uos_diffdrive_teleop'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
