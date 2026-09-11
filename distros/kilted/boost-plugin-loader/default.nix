
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, gtest, ros-industrial-cmake-boilerplate }:
buildRosPackage {
  pname = "ros-kilted-boost-plugin-loader";
  version = "0.4.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/boost_plugin_loader-release/archive/release/kilted/boost_plugin_loader/0.4.5-1.tar.gz";
    name = "0.4.5-1.tar.gz";
    sha256 = "19c2ba221cb371510313e3a9ae46edd00bdf8972d553a094b51e9e15422fa19a";
  };

  buildType = "cmake";
  buildInputs = [ cmake ros-industrial-cmake-boilerplate ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Boost plugin loader implementation";
    license = with lib.licenses; [ asl20 ];
  };
}
