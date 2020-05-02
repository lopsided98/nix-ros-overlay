
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosdoc-lite }:
buildRosPackage {
  pname = "ros-melodic-jackal-tutorials";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal-release/archive/release/melodic/jackal_tutorials/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "83d78cc8d4181f497dc7d4b527863b22068c2ee387a1ca11bd760adf28eedef4";
  };

  buildType = "catkin";
  buildInputs = [ rosdoc-lite ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Jackal's tutorials.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
