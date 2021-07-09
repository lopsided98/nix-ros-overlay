
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, ros-industrial-cmake-boilerplate, tesseract-common }:
buildRosPackage {
  pname = "ros-noetic-tesseract-support";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/tesseract-release/archive/release/noetic/tesseract_support/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "43b191a57fab811b834548cd682e6ae35210695df2aab878bf269ce7f3bac0ea";
  };

  buildType = "cmake";
  buildInputs = [ ros-industrial-cmake-boilerplate tesseract-common ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The tesseract_support package containing files for test and examples'';
    license = with lib.licenses; [ asl20 ];
  };
}
