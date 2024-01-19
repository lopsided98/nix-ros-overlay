
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-noetic-sdhlibrary-cpp";
  version = "0.2.10-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/SDHLibrary-CPP-release/archive/release/noetic/sdhlibrary_cpp/0.2.10-1.tar.gz";
    name = "0.2.10-1.tar.gz";
    sha256 = "ffc04d5df500d974febd8575389ff9a96c149290190befe111345aa5fb08fe7f";
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
