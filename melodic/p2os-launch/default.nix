
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, p2os-teleop, p2os-driver, p2os-urdf, catkin, p2os-msgs }:
buildRosPackage {
  pname = "ros-melodic-p2os-launch";
  version = "2.1.1-r3";

  src = fetchurl {
    url = "https://github.com/allenh1/p2os-release/archive/release/melodic/p2os_launch/2.1.1-3.tar.gz";
    name = "2.1.1-3.tar.gz";
    sha256 = "44ce86f957548ceb122a58f2073bf32128e8e5c2ed32a95e4c76ad16ae37856f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ p2os-teleop p2os-urdf p2os-driver p2os-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch and config files designed for use with the p2os stack.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
