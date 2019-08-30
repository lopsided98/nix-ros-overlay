
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rostest, catkin, roslint, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-neonavigation-common";
  version = "0.4.2-r1";

  src = fetchurl {
    url = https://github.com/at-wat/neonavigation-release/archive/release/kinetic/neonavigation_common/0.4.2-1.tar.gz;
    sha256 = "cbe9b7e20c5ed2b6bde3f4a93a5d524f38e1c3135eb322724e9eb3a6e2703760";
  };

  buildInputs = [ roscpp ];
  checkInputs = [ rostest roslint ];
  propagatedBuildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Common headers for neonavigation meta-package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
