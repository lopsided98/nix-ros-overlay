
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mrpt2 }:
buildRosPackage {
  pname = "ros-iron-mp2p-icp";
  version = "1.4.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mp2p_icp-release/archive/release/iron/mp2p_icp/1.4.3-1.tar.gz";
    name = "1.4.3-1.tar.gz";
    sha256 = "16370ccbeb7d43973bf83c0b6e9df6dc08b01d9d8a5551d1396d594b567f7b78";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mrpt2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "A repertory of multi primitive-to-primitive (MP2P) ICP algorithms in C++";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
