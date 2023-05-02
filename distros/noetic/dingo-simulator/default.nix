
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dingo-gazebo }:
buildRosPackage {
  pname = "ros-noetic-dingo-simulator";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/dingo_simulator-release/archive/release/noetic/dingo_simulator/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "bb99c8c421dcc03d1f29ea34eec3bf4ac0eb0d62b0a69f30092618baa0591bf6";
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
