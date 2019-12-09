
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, readline, cmake }:
buildRosPackage {
  pname = "ros-kinetic-ypspur";
  version = "1.17.0-r1";

  src = fetchurl {
    url = "https://github.com/openspur/yp-spur-release/archive/release/kinetic/ypspur/1.17.0-1.tar.gz";
    name = "1.17.0-1.tar.gz";
    sha256 = "4a39d21cfd4b58e3cae0b8e1b76483e22e411a67dbe7f5d63a9719b87784e17c";
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
