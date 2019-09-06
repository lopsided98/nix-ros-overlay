
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, boost }:
buildRosPackage {
  pname = "ros-kinetic-swri-serial-util";
  version = "2.10.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/swri_serial_util/2.10.0-1.tar.gz";
    name = "2.10.0-1.tar.gz";
    sha256 = "0fb8f6ac633ef37fdf0f818d8c89e761f8d6b32b25d5e42961aafd61d819aee2";
  };

  buildType = "catkin";
  buildInputs = [ boost ];
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_serial_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
