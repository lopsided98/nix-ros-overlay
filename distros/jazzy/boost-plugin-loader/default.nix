
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, gtest, ros-industrial-cmake-boilerplate }:
buildRosPackage {
  pname = "ros-jazzy-boost-plugin-loader";
  version = "0.4.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/boost_plugin_loader-release/archive/release/jazzy/boost_plugin_loader/0.4.5-1.tar.gz";
    name = "0.4.5-1.tar.gz";
    sha256 = "93a4873fbf9df5140f534ed41b35fc838013e184571ac08dbfed520b9509f7b0";
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
