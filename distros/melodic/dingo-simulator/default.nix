
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dingo-gazebo }:
buildRosPackage {
  pname = "ros-melodic-dingo-simulator";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/dingo_simulator-release/archive/release/melodic/dingo_simulator/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "1563b72dfc24bafcdd8c9a879fdce5bd45fabdc58db6bb0ed9eae07f7f4a385f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dingo-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Packages for simulating Dingo.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
