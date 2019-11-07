
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, git, cmake }:
buildRosPackage {
  pname = "ros-dashing-foonathan-memory-vendor";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/foonathan_memory_vendor-release/archive/release/dashing/foonathan_memory_vendor/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "0e84b05bdcb6f8192511410a5b3d97c1965f4701da4694b59c5d520b7a35598a";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ cmake ];
  nativeBuildInputs = [ git cmake ];

  meta = {
    description = ''Foonathan/memory vendor package for Fast-RTPS.'';
    license = with lib.licenses; [ asl20 "zlib License" ];
  };
}
