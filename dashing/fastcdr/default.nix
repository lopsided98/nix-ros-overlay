
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage rec {
  pname = "ros-dashing-fastcdr";
  version = "1.0.9-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fastcdr-release/archive/release/dashing/fastcdr/1.0.9-2.tar.gz";
    name = "1.0.9-2.tar.gz";
    sha256 = "6a1a315a144acceea3ece865bce0d7e9fd1b23674595a1abf42abd8157895f42";
  };

  buildType = "cmake";
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''CDR serialization implementation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
