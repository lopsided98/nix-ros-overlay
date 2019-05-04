
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, raspigibbon-ros, catkin, raspigibbon-control, raspigibbon-gazebo }:
buildRosPackage {
  pname = "ros-kinetic-raspigibbon-sim";
  version = "0.0.1";

  src = fetchurl {
    url = https://github.com/raspberrypigibbon/raspigibbon_sim-release/archive/release/kinetic/raspigibbon_sim/0.0.1-0.tar.gz;
    sha256 = "e7b285bbb844a8fcfee1e6f538f3bd4ac1e71a6ce42ee2041480afc3076b7a32";
  };

  propagatedBuildInputs = [ raspigibbon-ros raspigibbon-control raspigibbon-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The raspigibbon_sim package'';
    license = with lib.licenses; [ mit ];
  };
}
