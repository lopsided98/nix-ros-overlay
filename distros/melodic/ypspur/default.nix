
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, readline }:
buildRosPackage {
  pname = "ros-melodic-ypspur";
  version = "1.20.0-r1";

  src = fetchurl {
    url = "https://github.com/openspur/yp-spur-release/archive/release/melodic/ypspur/1.20.0-1.tar.gz";
    name = "1.20.0-1.tar.gz";
    sha256 = "64d9f83ecdc7906944cb3d51701a91f8a9d06cf4eb9c39e326790b3f19045f8d";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ catkin readline ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''YP-Spur is a mobile robot motion control software with coordinate frame based commands.'';
    license = with lib.licenses; [ mit ];
  };
}
