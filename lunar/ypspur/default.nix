
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, readline, catkin, cmake }:
buildRosPackage {
  pname = "ros-lunar-ypspur";
  version = "1.16.0-r1";

  src = fetchurl {
    url = https://github.com/openspur/yp-spur-release/archive/release/lunar/ypspur/1.16.0-1.tar.gz;
    sha256 = "01c2d8e520423786451e9e0e18e2db05e35cd19e476319e1497400d78cfce11e";
  };

  buildInputs = [ readline ];
  propagatedBuildInputs = [ readline catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''YP-Spur is a mobile robot motion control software with coordinate frame based commands.'';
    license = with lib.licenses; [ mit ];
  };
}
