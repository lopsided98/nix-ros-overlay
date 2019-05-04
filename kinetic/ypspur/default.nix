
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, readline, catkin, cmake }:
buildRosPackage {
  pname = "ros-kinetic-ypspur";
  version = "1.15.3";

  src = fetchurl {
    url = https://github.com/openspur/yp-spur-release/archive/release/kinetic/ypspur/1.15.3-0.tar.gz;
    sha256 = "e819227be184eb7e504d97f14693b064538bcb2b9e5631176247fe73db10a7ad";
  };

  buildInputs = [ readline ];
  propagatedBuildInputs = [ readline catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''YP-Spur is a mobile robot motion control software with coordinate frame based commands.'';
    license = with lib.licenses; [ mit ];
  };
}
