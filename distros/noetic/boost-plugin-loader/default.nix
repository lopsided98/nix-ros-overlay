
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, gtest, ros-industrial-cmake-boilerplate }:
buildRosPackage {
  pname = "ros-noetic-boost-plugin-loader";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/tesseract-robotics-release/boost_plugin_loader-release/archive/release/noetic/boost_plugin_loader/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "23b312f813040f88dcfe8a69ebe3fd31704fb6817f8053e1d6a6f673c680aa5b";
  };

  buildType = "cmake";
  buildInputs = [ ros-industrial-cmake-boilerplate ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ boost ];

  meta = {
    description = ''Boost plugin loader implementation'';
    license = with lib.licenses; [ asl20 ];
  };
}
