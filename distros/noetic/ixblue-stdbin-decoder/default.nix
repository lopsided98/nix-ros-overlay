
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, git, gtest }:
buildRosPackage {
  pname = "ros-noetic-ixblue-stdbin-decoder";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ixblue/ixblue_stdbin_decoder-release/archive/release/noetic/ixblue_stdbin_decoder/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "75b183c26ce921e1e7f42760b052ca5c2f94d3031fe43d061db7738593358b6a";
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
