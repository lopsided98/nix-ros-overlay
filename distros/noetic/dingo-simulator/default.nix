
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dingo-gazebo }:
buildRosPackage {
  pname = "ros-noetic-dingo-simulator";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/dingo_simulator-release/archive/release/noetic/dingo_simulator/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "09094dfe9128e2ce280c7c62ba092c9ac08630d405ce6639df972304f50b5394";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ dingo-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Packages for simulating Dingo.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
