
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dingo-gazebo }:
buildRosPackage {
  pname = "ros-melodic-dingo-simulator";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/dingo_simulator-release/archive/release/melodic/dingo_simulator/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "a00831f9eb08f30fdb5f6ab2d00952cd89454fce024dff8b9ab58888fcfe1ed5";
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
