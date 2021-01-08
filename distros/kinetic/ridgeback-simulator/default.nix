
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ridgeback-gazebo }:
buildRosPackage {
  pname = "ros-kinetic-ridgeback-simulator";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ridgeback_simulator-release/archive/release/kinetic/ridgeback_simulator/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "73ae7414480e7f26f06aa25bcdca0d3f18406c65627c9d89d921fd9a9c0ad32d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ridgeback-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Packages for simulating Ridgeback.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
