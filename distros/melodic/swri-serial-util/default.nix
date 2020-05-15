
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin }:
buildRosPackage {
  pname = "ros-melodic-swri-serial-util";
  version = "2.13.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_serial_util/2.13.0-1.tar.gz";
    name = "2.13.0-1.tar.gz";
    sha256 = "c3b5d626029c923fa6b01d54269a34ef0ba5246c95f7198b2c1804e1964bdfd2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_serial_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
