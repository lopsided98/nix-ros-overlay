
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, gtest, ros-industrial-cmake-boilerplate }:
buildRosPackage {
  pname = "ros-noetic-boost-plugin-loader";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/tesseract-robotics-release/boost_plugin_loader-release/archive/release/noetic/boost_plugin_loader/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "4a4f8eff7ccd731237c31543082cad6242ec12d967c58a2d0e02c872d65b50f0";
  };

  buildType = "cmake";
  buildInputs = [ cmake ros-industrial-cmake-boilerplate ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Boost plugin loader implementation'';
    license = with lib.licenses; [ asl20 ];
  };
}
