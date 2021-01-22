
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, readline }:
buildRosPackage {
  pname = "ros-kinetic-ypspur";
  version = "1.20.0-r1";

  src = fetchurl {
    url = "https://github.com/openspur/yp-spur-release/archive/release/kinetic/ypspur/1.20.0-1.tar.gz";
    name = "1.20.0-1.tar.gz";
    sha256 = "663ba5556d1e74927eafd40dc86854fbdc20abf53d9c047332fcf2237f582e03";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ catkin readline ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''YP-Spur is a mobile robot motion control software with coordinate frame based commands.'';
    license = with lib.licenses; [ mit ];
  };
}
