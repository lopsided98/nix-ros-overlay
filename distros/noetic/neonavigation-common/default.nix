
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roslint, rostest, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-neonavigation-common";
  version = "0.10.8-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/noetic/neonavigation_common/0.10.8-1.tar.gz";
    name = "0.10.8-1.tar.gz";
    sha256 = "50e9fe14ab5ecaf164fead2d164e3c950f41aff9d327d3f675f843eff5cc07d8";
  };

  buildType = "catkin";
  checkInputs = [ roslint rostest std-msgs std-srvs ];
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common headers for neonavigation meta-package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
