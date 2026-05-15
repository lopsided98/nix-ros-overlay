
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-kilted-pfs";
  version = "0.15.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pfs-release/archive/release/kilted/pfs/0.15.0-1.tar.gz";
    name = "0.15.0-1.tar.gz";
    sha256 = "607cff3b7a548deddc9036a9481200f3fa6c9b6e2565efa4a001fc9f823e9f8c";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];

  meta = {
    description = "Production grade, very easy to use, procfs parsing library in C++";
    license = with lib.licenses; [ asl20 ];
  };
}
