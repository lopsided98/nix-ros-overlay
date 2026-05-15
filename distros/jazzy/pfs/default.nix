
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-jazzy-pfs";
  version = "0.15.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pfs-release/archive/release/jazzy/pfs/0.15.0-1.tar.gz";
    name = "0.15.0-1.tar.gz";
    sha256 = "0778cbe17b31018f43f00783377a50376006667b8dde802881f5ae6ac773e32e";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];

  meta = {
    description = "Production grade, very easy to use, procfs parsing library in C++";
    license = with lib.licenses; [ asl20 ];
  };
}
