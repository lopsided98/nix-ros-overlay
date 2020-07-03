
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rostest }:
buildRosPackage {
  pname = "ros-kinetic-swri-string-util";
  version = "2.13.7-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/kinetic/swri_string_util/2.13.7-1.tar.gz";
    name = "2.13.7-1.tar.gz";
    sha256 = "7e1d7d3c800babcad80741897f1e6c28cd765b5a478dbb62300248ac160e41a2";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_string_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
