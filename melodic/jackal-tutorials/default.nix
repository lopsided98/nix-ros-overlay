
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosdoc-lite, catkin }:
buildRosPackage {
  pname = "ros-melodic-jackal-tutorials";
  version = "0.6.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal-release/archive/release/melodic/jackal_tutorials/0.6.3-1.tar.gz";
    name = "0.6.3-1.tar.gz";
    sha256 = "71daa344a4957b391be3d167abd58a32f345bdcb12f04e9205973730562cd862";
  };

  buildType = "catkin";
  buildInputs = [ rosdoc-lite ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Jackal's tutorials.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
