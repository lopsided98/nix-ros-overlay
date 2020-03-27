
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-libpcan";
  version = "0.6.15-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_extern-release/archive/release/melodic/libpcan/0.6.15-1.tar.gz";
    name = "0.6.15-1.tar.gz";
    sha256 = "54c1838f0cc34f94a2d65b6c18433baf7e2182834d375b070162d93a15ab3709";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package wraps the libpcan to use it as a ros dependency'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
