
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rostest, catkin, roslint, roscpp }:
buildRosPackage {
  pname = "ros-lunar-neonavigation-common";
  version = "0.4.0-r1";

  src = fetchurl {
    url = https://github.com/at-wat/neonavigation-release/archive/release/lunar/neonavigation_common/0.4.0-1.tar.gz;
    sha256 = "3e1a777844b0557ba1a8021f7fe07247367fed69ef824805c095fb1f1a676c5f";
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
