
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-rfsm";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/orocos-gbp/rfsm-release/archive/release/kinetic/rfsm/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "08a1910297e5fe5347b6b00b62ef7fd708ce3117731d7a75b091279b795d007f";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the rFSM flavor of Statecharts.'';
    license = with lib.licenses; [ lgpl2 bsdOriginal ];
  };
}
