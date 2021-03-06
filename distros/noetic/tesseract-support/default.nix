
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, ros-industrial-cmake-boilerplate, tesseract-common }:
buildRosPackage {
  pname = "ros-noetic-tesseract-support";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/tesseract-release/archive/release/noetic/tesseract_support/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "5879c2ed8ca4cd121fc6bd12f7c77f0627671bc1a20aa0638dae541637700075";
  };

  buildType = "cmake";
  buildInputs = [ ros-industrial-cmake-boilerplate tesseract-common ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The tesseract_support package containing files for test and examples'';
    license = with lib.licenses; [ asl20 ];
  };
}
