
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rxcpp-vendor }:
buildRosPackage {
  pname = "ros-kinetic-rxros";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/rosin-project/rxros-release/archive/release/kinetic/rxros/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "6b5062da9929eea991df6b7354d1cb0fb15b7f33ee913b7d2d5eb2b1f110fa69";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roscpp rxcpp-vendor ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The RxROS package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
