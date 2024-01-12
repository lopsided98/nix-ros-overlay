
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtest, ros-industrial-cmake-boilerplate, tesseract-common }:
buildRosPackage {
  pname = "ros-noetic-tesseract-support";
  version = "0.18.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/tesseract-release/archive/release/noetic/tesseract_support/0.18.1-1.tar.gz";
    name = "0.18.1-1.tar.gz";
    sha256 = "17c43f3d5a06a891443f9b0f3b68df1be1ad0517beee71cd0246c38d5acfea25";
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
