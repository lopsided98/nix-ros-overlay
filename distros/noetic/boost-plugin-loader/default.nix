
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, gtest, ros-industrial-cmake-boilerplate }:
buildRosPackage {
  pname = "ros-noetic-boost-plugin-loader";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/tesseract-robotics-release/boost_plugin_loader-release/archive/release/noetic/boost_plugin_loader/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "304122a4b9423b6512662cadb878f0ad355a5574b77b81715302f4349a59018c";
  };

  buildType = "cmake";
  buildInputs = [ ros-industrial-cmake-boilerplate ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Boost plugin loader implementation'';
    license = with lib.licenses; [ asl20 ];
  };
}
