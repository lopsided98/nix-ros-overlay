
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-jazzy-pfs";
  version = "0.13.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pfs-release/archive/release/jazzy/pfs/0.13.1-1.tar.gz";
    name = "0.13.1-1.tar.gz";
    sha256 = "cbf90ed1bcf08304d1ead8939b7bffed015b1c8854a1897cf8f8f2abb961a3ee";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];

  meta = {
    description = "Production grade, very easy to use, procfs parsing library in C++";
    license = with lib.licenses; [ asl20 ];
  };
}
