
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, git, gtest }:
buildRosPackage {
  pname = "ros-kinetic-ixblue-stdbin-decoder";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ixblue/ixblue_stdbin_decoder-release/archive/release/kinetic/ixblue_stdbin_decoder/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "f81abdb1f70c7020f195f7e857aeb5a0a2159e18b669ab57b5bcefc55a6efff0";
  };

  buildType = "cmake";
  checkInputs = [ git gtest ];
  propagatedBuildInputs = [ boost catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''iXblue parsing library for protocol iXblue stdbin'';
    license = with lib.licenses; [ mit ];
  };
}
