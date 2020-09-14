
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosdoc-lite }:
buildRosPackage {
  pname = "ros-kinetic-jackal-tutorials";
  version = "0.6.6-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal-release/archive/release/kinetic/jackal_tutorials/0.6.6-1.tar.gz";
    name = "0.6.6-1.tar.gz";
    sha256 = "8e474dfad07b00ac80419482c3f071c1ef31f595089348efd1d935a0ca129595";
  };

  buildType = "catkin";
  buildInputs = [ rosdoc-lite ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Jackal's tutorials.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
