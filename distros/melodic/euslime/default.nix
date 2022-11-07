
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, catkin-virtualenv, roseus, slime-ros }:
buildRosPackage {
  pname = "ros-melodic-euslime";
  version = "1.1.4-r4";

  src = fetchurl {
    url = "https://github.com/jsk-ros-pkg/euslime-release/archive/release/melodic/euslime/1.1.4-4.tar.gz";
    name = "1.1.4-4.tar.gz";
    sha256 = "63d93b261b839e4bc4f0ed3c1816f7c3208ba48af6a63c554d33ecf3ebef047e";
  };

  buildType = "catkin";
  buildInputs = [ catkin catkin-virtualenv ];
  propagatedBuildInputs = [ roseus slime-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''EusLisp meets SLIME'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
