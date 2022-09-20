
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moose-gazebo }:
buildRosPackage {
  pname = "ros-melodic-moose-simulator";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/moose_simulator-release/archive/release/melodic/moose_simulator/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "6e07c0ddc729792bd9f1437f7ec0498958624b2675eb966aa07d012371977070";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ moose-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Packages for simulating Moose'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
