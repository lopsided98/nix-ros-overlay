
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, git }:
buildRosPackage {
  pname = "ros-eloquent-foonathan-memory-vendor";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/foonathan_memory_vendor-release/archive/release/eloquent/foonathan_memory_vendor/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "4a7b85488e213af3a1e0f07fd208a730918f527fa1b50e52f2bec4a141d7e17f";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ cmake ];
  nativeBuildInputs = [ cmake git ];

  meta = {
    description = ''Foonathan/memory vendor package for Fast-RTPS.'';
    license = with lib.licenses; [ asl20 "zlib License" ];
  };
}
