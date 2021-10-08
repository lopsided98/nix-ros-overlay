
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosdoc-lite }:
buildRosPackage {
  pname = "ros-melodic-jackal-tutorials";
  version = "0.7.7-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal-release/archive/release/melodic/jackal_tutorials/0.7.7-1.tar.gz";
    name = "0.7.7-1.tar.gz";
    sha256 = "c486e6a59c096ea2947610a84f1c5670cabbdfee198fc6b9dbad90a296c7f9b2";
  };

  buildType = "catkin";
  buildInputs = [ rosdoc-lite ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Jackal's tutorials.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
