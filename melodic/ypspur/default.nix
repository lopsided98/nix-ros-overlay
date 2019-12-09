
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, readline, cmake }:
buildRosPackage {
  pname = "ros-melodic-ypspur";
  version = "1.17.0-r1";

  src = fetchurl {
    url = "https://github.com/openspur/yp-spur-release/archive/release/melodic/ypspur/1.17.0-1.tar.gz";
    name = "1.17.0-1.tar.gz";
    sha256 = "205b4d6d1fa49430f94c81c2d4f80c5c0bd1de0be2a2ec112656232f3af9ea8c";
  };

  buildType = "cmake";
  buildInputs = [ readline ];
  propagatedBuildInputs = [ catkin readline ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''YP-Spur is a mobile robot motion control software with coordinate frame based commands.'';
    license = with lib.licenses; [ mit ];
  };
}
