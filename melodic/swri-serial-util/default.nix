
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, boost }:
buildRosPackage {
  pname = "ros-melodic-swri-serial-util";
  version = "2.10.0-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_serial_util/2.10.0-1.tar.gz";
    name = "2.10.0-1.tar.gz";
    sha256 = "d3c76b1ba3759a0d75024b01fe7f923990f12c1f0095b8f123ce321e9a1a2a51";
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
