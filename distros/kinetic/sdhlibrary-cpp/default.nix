
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-kinetic-sdhlibrary-cpp";
  version = "0.2.10-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/SDHLibrary-CPP-release/archive/release/kinetic/sdhlibrary_cpp/0.2.10-1.tar.gz";
    name = "0.2.10-1.tar.gz";
    sha256 = "61c0b69deb47b8f042c15da6a496e849c6fdc8e061c025e4e25da7668e7e50ad";
  };

  buildType = "cmake";
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''This is SDHLibrary-CPP, the C++ library to access
  an SDH (SCHUNK Dexterous Hand)'';
    license = with lib.licenses; [ asl20 ];
  };
}
