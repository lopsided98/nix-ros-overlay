
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, p2os-driver, p2os-msgs, p2os-teleop, p2os-urdf }:
buildRosPackage {
  pname = "ros-melodic-p2os-launch";
  version = "2.1.1-r3";

  src = fetchurl {
    url = "https://github.com/allenh1/p2os-release/archive/release/melodic/p2os_launch/2.1.1-3.tar.gz";
    name = "2.1.1-3.tar.gz";
    sha256 = "44ce86f957548ceb122a58f2073bf32128e8e5c2ed32a95e4c76ad16ae37856f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ p2os-driver p2os-msgs p2os-teleop p2os-urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch and config files designed for use with the p2os stack.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
