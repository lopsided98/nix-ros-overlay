
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, readline }:
buildRosPackage {
  pname = "ros-kinetic-ypspur";
  version = "1.19.0-r1";

  src = fetchurl {
    url = "https://github.com/openspur/yp-spur-release/archive/release/kinetic/ypspur/1.19.0-1.tar.gz";
    name = "1.19.0-1.tar.gz";
    sha256 = "4d6fc40e11875df74a8bfdf65bd5c79ae24c7725f81d920c89f70e5049a4f089";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ catkin readline ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''YP-Spur is a mobile robot motion control software with coordinate frame based commands.'';
    license = with lib.licenses; [ mit ];
  };
}
