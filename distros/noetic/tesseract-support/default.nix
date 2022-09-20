
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtest, ros-industrial-cmake-boilerplate, tesseract-common }:
buildRosPackage {
  pname = "ros-noetic-tesseract-support";
  version = "0.13.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/tesseract-release/archive/release/noetic/tesseract_support/0.13.1-1.tar.gz";
    name = "0.13.1-1.tar.gz";
    sha256 = "0936264ac05cde9e7b6fe227800a102fa3c5081cc97419ceefbe67921a80f147";
  };

  buildType = "cmake";
  buildInputs = [ cmake ros-industrial-cmake-boilerplate tesseract-common ];
  checkInputs = [ gtest ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The tesseract_support package containing files for test and examples'';
    license = with lib.licenses; [ asl20 ];
  };
}
