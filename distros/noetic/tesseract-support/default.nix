
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, ros-industrial-cmake-boilerplate, tesseract-common }:
buildRosPackage {
  pname = "ros-noetic-tesseract-support";
  version = "0.6.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/tesseract-release/archive/release/noetic/tesseract_support/0.6.6-1.tar.gz";
    name = "0.6.6-1.tar.gz";
    sha256 = "f59949e16d76c7fe6d58f84dab9c9b3c584235f77cf9f60a4e717ea2a08e653c";
  };

  buildType = "cmake";
  buildInputs = [ ros-industrial-cmake-boilerplate tesseract-common ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The tesseract_support package containing files for test and examples'';
    license = with lib.licenses; [ asl20 ];
  };
}
