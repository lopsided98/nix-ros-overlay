
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roslint, rostest }:
buildRosPackage {
  pname = "ros-noetic-neonavigation-common";
  version = "0.8.7-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/noetic/neonavigation_common/0.8.7-1.tar.gz";
    name = "0.8.7-1.tar.gz";
    sha256 = "f39d6be9bff83f6c24f507528852700a725c421169b68b43f89772250af0c175";
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
