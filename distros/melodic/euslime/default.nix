
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, catkin-virtualenv, roseus, slime-ros }:
buildRosPackage {
  pname = "ros-melodic-euslime";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/jsk-ros-pkg/euslime-release/archive/release/melodic/euslime/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "7b1218610fe3dcd041423a9651ba5111032e787359bf3c845887f7de2968c3b3";
  };

  buildType = "catkin";
  buildInputs = [ catkin-virtualenv ];
  propagatedBuildInputs = [ roseus slime-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''EusLisp meets SLIME'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
