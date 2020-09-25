
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, git, gtest }:
buildRosPackage {
  pname = "ros-kinetic-ixblue-stdbin-decoder";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ixblue/ixblue_stdbin_decoder-release/archive/release/kinetic/ixblue_stdbin_decoder/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "2ce0952fb15f8fdd681e6cd1a1c3facbacbc3774bf8d2cb21683506df0ad881c";
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
