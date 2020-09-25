
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, git, gtest }:
buildRosPackage {
  pname = "ros-melodic-ixblue-stdbin-decoder";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ixblue/ixblue_stdbin_decoder-release/archive/release/melodic/ixblue_stdbin_decoder/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "ca06b4c6776c6bd419b46546cbbbb709b8a229d876c4b6958c13eaee9ef65bca";
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
