
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-dashing-fastcdr";
  version = "1.0.13-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fastcdr-release/archive/release/dashing/fastcdr/1.0.13-1.tar.gz";
    name = "1.0.13-1.tar.gz";
    sha256 = "9af2cdb692aa08995d55773dbd863895c858ee463032c81340880c4166afe3c4";
  };

  buildType = "cmake";
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''CDR serialization implementation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
