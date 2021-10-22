
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, ps3joy, roscpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-uos-diffdrive-teleop";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/uos-tools/archive/release/melodic/uos_diffdrive_teleop/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "97046be610e69043ee9998448c35c4427b8acfab629215481681f528de564b75";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs ps3joy roscpp sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''uos_diffdrive_teleop'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
