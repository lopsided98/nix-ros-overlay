
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin }:
buildRosPackage {
  pname = "ros-kinetic-swri-serial-util";
  version = "2.13.1-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/swri_serial_util/2.13.1-1.tar.gz";
    name = "2.13.1-1.tar.gz";
    sha256 = "99b7b4dd90f9accc25b6972729da7e38d44d80703b485508ecfc95e147f863f9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_serial_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
