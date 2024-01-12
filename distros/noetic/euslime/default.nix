
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, catkin-virtualenv, roseus, slime-ros }:
buildRosPackage {
  pname = "ros-noetic-euslime";
  version = "1.1.4-r4";

  src = fetchurl {
    url = "https://github.com/jsk-ros-pkg/euslime-release/archive/release/noetic/euslime/1.1.4-4.tar.gz";
    name = "1.1.4-4.tar.gz";
    sha256 = "9871d29d0c142d3923cd48c5a01919aebb2dfa7acf8b0c01192becde7f34bfee";
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
