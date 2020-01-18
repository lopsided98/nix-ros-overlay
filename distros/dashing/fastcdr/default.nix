
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-dashing-fastcdr";
  version = "1.0.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fastcdr-release/archive/release/dashing/fastcdr/1.0.11-1.tar.gz";
    name = "1.0.11-1.tar.gz";
    sha256 = "6c08a1eaebd88e797c06d450449a0979fe1122046da0212280f76219d97c9a45";
  };

  buildType = "cmake";
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''CDR serialization implementation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
