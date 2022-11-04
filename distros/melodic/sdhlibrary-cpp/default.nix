
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-melodic-sdhlibrary-cpp";
  version = "0.2.10-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/SDHLibrary-CPP-release/archive/release/melodic/sdhlibrary_cpp/0.2.10-1.tar.gz";
    name = "0.2.10-1.tar.gz";
    sha256 = "cdc88eafafbe1def8674349fac30f504bd9d354416ec2a2daa58e47d3d138db3";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''This is SDHLibrary-CPP, the C++ library to access
  an SDH (SCHUNK Dexterous Hand)'';
    license = with lib.licenses; [ asl20 ];
  };
}
