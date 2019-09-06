
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, readline, catkin, cmake }:
buildRosPackage {
  pname = "ros-kinetic-ypspur";
  version = "1.16.0-r1";

  src = fetchurl {
    url = "https://github.com/openspur/yp-spur-release/archive/release/kinetic/ypspur/1.16.0-1.tar.gz";
    name = "1.16.0-1.tar.gz";
    sha256 = "a13a8fc628c88c3fbc5526d95928de84dde62cec334fb3818ef418e2b003781d";
  };

  buildType = "cmake";
  buildInputs = [ readline ];
  propagatedBuildInputs = [ readline catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''YP-Spur is a mobile robot motion control software with coordinate frame based commands.'';
    license = with lib.licenses; [ mit ];
  };
}
