
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rostest }:
buildRosPackage {
  pname = "ros-melodic-swri-string-util";
  version = "2.13.1-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_string_util/2.13.1-1.tar.gz";
    name = "2.13.1-1.tar.gz";
    sha256 = "2d52a1f5e36e59d37aaab513d5a159fb653d33c6b67aa4d4940a336b5a0411db";
  };

  buildType = "catkin";
  checkInputs = [ rostest ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_string_util'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
