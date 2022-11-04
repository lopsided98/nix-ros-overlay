
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, git, gtest }:
buildRosPackage {
  pname = "ros-melodic-ixblue-stdbin-decoder";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ixblue/ixblue_stdbin_decoder-release/archive/release/melodic/ixblue_stdbin_decoder/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "7e0f3d91ae4c3d9349e4cf450439284061c27f00c84ee94069daaf12e26c8988";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ git gtest ];
  propagatedBuildInputs = [ boost catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''iXblue parsing library for protocol iXblue stdbin'';
    license = with lib.licenses; [ mit ];
  };
}
