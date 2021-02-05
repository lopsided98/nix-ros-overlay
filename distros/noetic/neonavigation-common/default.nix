
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, roslint, rostest, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-noetic-neonavigation-common";
  version = "0.10.6-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/noetic/neonavigation_common/0.10.6-1.tar.gz";
    name = "0.10.6-1.tar.gz";
    sha256 = "acdea97e27cecfba83a32f922aef0ae7d7c51c966ff05ab46620643d6af753d3";
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
