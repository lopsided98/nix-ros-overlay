
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rxros, tf }:
buildRosPackage {
  pname = "ros-melodic-rxros-tf";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/rosin-project/rxros-release/archive/release/melodic/rxros_tf/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "dc14d6a0fb3706f25cbad9696e1b39a5e9b16f44be6f8f827a13aa5833bbe355";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rxros tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Extensions to RxROS for working with TF.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
