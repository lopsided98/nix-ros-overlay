
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-lyrical-pfs";
  version = "0.15.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/pfs-release/archive/release/lyrical/pfs/0.15.0-1.tar.gz";
    name = "0.15.0-1.tar.gz";
    sha256 = "148edd51e7606adf90fac9ad105c5064c5194d4754eae9576ecc6f8129a03260";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];

  meta = {
    description = "Production grade, very easy to use, procfs parsing library in C++";
    license = with lib.licenses; [ asl20 ];
  };
}
