
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, grizzly-gazebo }:
buildRosPackage {
  pname = "ros-kinetic-grizzly-simulator";
  version = "0.3.1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/grizzly_simulator-release/archive/release/kinetic/grizzly_simulator/0.3.1-0.tar.gz";
    name = "0.3.1-0.tar.gz";
    sha256 = "6f2c35856157878f358644de3942ad81e1217386d76ee9392b36d3386d2dc060";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ grizzly-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage allowing easy installation of Grizzly simulation components.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
