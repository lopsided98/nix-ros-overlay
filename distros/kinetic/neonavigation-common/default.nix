
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roslint, rostest }:
buildRosPackage {
  pname = "ros-kinetic-neonavigation-common";
  version = "0.8.3-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/kinetic/neonavigation_common/0.8.3-1.tar.gz";
    name = "0.8.3-1.tar.gz";
    sha256 = "3c88335b2465e532902a12cdb6ea7114a4c0776ebf6220708a6bb3f5498054ad";
  };

  buildType = "catkin";
  checkInputs = [ roslint rostest ];
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common headers for neonavigation meta-package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
