
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-eloquent-fastcdr";
  version = "1.0.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fastcdr-release/archive/release/eloquent/fastcdr/1.0.11-1.tar.gz";
    name = "1.0.11-1.tar.gz";
    sha256 = "3d44468b07021746fe93dc1faf88b06363fa6f3433e77d41fc1fb6bb9f108c77";
  };

  buildType = "cmake";
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''CDR serialization implementation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
