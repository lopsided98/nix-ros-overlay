
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rostest, catkin, roslint, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-neonavigation-common";
  version = "0.4.0-r1";

  src = fetchurl {
    url = https://github.com/at-wat/neonavigation-release/archive/release/kinetic/neonavigation_common/0.4.0-1.tar.gz;
    sha256 = "2e55e92aa89caace2b6947c2e8019609030e7fa0033a2c015c16776daa807c25";
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
