
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin }:
buildRosPackage {
  pname = "ros-melodic-swri-serial-util";
  version = "2.12.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_serial_util/2.12.0-1.tar.gz";
    name = "2.12.0-1.tar.gz";
    sha256 = "3460be216d1aa690eaf9cd94a0d418282e89889b5ad191cd3fc947f413db3f27";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_serial_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
