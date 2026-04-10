
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-kilted-pfs";
  version = "0.13.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pfs-release/archive/release/kilted/pfs/0.13.1-1.tar.gz";
    name = "0.13.1-1.tar.gz";
    sha256 = "5af04527e297c83104070d7b833ba4e29e7731f2f335a09c989908bba086aafe";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];

  meta = {
    description = "Production grade, very easy to use, procfs parsing library in C++";
    license = with lib.licenses; [ asl20 ];
  };
}
