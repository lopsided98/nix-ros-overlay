
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, gtest, ros-industrial-cmake-boilerplate }:
buildRosPackage {
  pname = "ros-humble-boost-plugin-loader";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/tesseract-robotics-release/boost_plugin_loader-release/archive/release/humble/boost_plugin_loader/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "5464e5b2049c8f2281a4ea8e1dc418166c03c8714dec3f429d517fde8e6dc293";
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
