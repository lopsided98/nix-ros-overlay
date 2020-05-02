
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosdoc-lite }:
buildRosPackage {
  pname = "ros-kinetic-jackal-tutorials";
  version = "0.6.5-r2";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal-release/archive/release/kinetic/jackal_tutorials/0.6.5-2.tar.gz";
    name = "0.6.5-2.tar.gz";
    sha256 = "4fcfae07f72acc2baa8ca5e3965bf6d736d2e9d7c6d2cc9ad654a76a731aad1b";
  };

  buildType = "catkin";
  buildInputs = [ rosdoc-lite ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Jackal's tutorials.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
