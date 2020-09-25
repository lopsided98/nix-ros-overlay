
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, git, gtest }:
buildRosPackage {
  pname = "ros-noetic-ixblue-stdbin-decoder";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ixblue/ixblue_stdbin_decoder-release/archive/release/noetic/ixblue_stdbin_decoder/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "0257fe35424f1f72730026bfdade654e453e04236dc5ea6af2ac6c0560e362e3";
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
