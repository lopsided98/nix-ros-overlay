
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, catkin-virtualenv, roseus, slime-ros }:
buildRosPackage {
  pname = "ros-noetic-euslime";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/jsk-ros-pkg/euslime-release/archive/release/noetic/euslime/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "9253cf2007e79c6abd81333fca4e042c8a2aad24075d3942cb2c4f993ad84897";
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
