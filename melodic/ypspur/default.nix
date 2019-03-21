
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, readline, catkin, cmake }:
buildRosPackage {
  pname = "ros-melodic-ypspur";
  version = "1.15.3";

  src = fetchurl {
    url = https://github.com/openspur/yp-spur-release/archive/release/melodic/ypspur/1.15.3-0.tar.gz;
    sha256 = "35d3539033d2e62e0a731c12c4cce634e0976e41be664aac51ac0da12fae19a2";
  };

  propagatedBuildInputs = [ readline catkin ];
  nativeBuildInputs = [ readline cmake ];

  meta = {
    description = ''YP-Spur is a mobile robot motion control software with coordinate frame based commands.'';
    #license = lib.licenses.MIT;
  };
}
