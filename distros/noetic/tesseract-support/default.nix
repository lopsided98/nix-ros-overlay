
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, ros-industrial-cmake-boilerplate, tesseract-common }:
buildRosPackage {
  pname = "ros-noetic-tesseract-support";
  version = "0.6.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/tesseract-release/archive/release/noetic/tesseract_support/0.6.9-1.tar.gz";
    name = "0.6.9-1.tar.gz";
    sha256 = "c65f97879f060844ddaf1c768083fad7429acc599782be318e2f4625dcec61ff";
  };

  buildType = "cmake";
  buildInputs = [ ros-industrial-cmake-boilerplate tesseract-common ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The tesseract_support package containing files for test and examples'';
    license = with lib.licenses; [ asl20 ];
  };
}
