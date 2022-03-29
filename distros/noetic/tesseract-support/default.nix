
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, ros-industrial-cmake-boilerplate, tesseract-common }:
buildRosPackage {
  pname = "ros-noetic-tesseract-support";
  version = "0.8.6-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/tesseract-release/archive/release/noetic/tesseract_support/0.8.6-1.tar.gz";
    name = "0.8.6-1.tar.gz";
    sha256 = "bf93f39eecfde80a2434bd4eeef21a305cc1deed3e4cfcacdc636436c2b1ab92";
  };

  buildType = "cmake";
  buildInputs = [ ros-industrial-cmake-boilerplate tesseract-common ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The tesseract_support package containing files for test and examples'';
    license = with lib.licenses; [ asl20 ];
  };
}
