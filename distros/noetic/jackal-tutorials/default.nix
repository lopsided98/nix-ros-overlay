
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosdoc-lite }:
buildRosPackage {
  pname = "ros-noetic-jackal-tutorials";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal-release/archive/release/noetic/jackal_tutorials/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "c298a327681f7e615e6539b3618cb156e223711f50c729d1556c70aa8f186556";
  };

  buildType = "catkin";
  buildInputs = [ rosdoc-lite ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Jackal's tutorials.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
