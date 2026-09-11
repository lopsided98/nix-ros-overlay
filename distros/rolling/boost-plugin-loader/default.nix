
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, gtest, ros-industrial-cmake-boilerplate }:
buildRosPackage {
  pname = "ros-rolling-boost-plugin-loader";
  version = "0.4.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/boost_plugin_loader-release/archive/release/rolling/boost_plugin_loader/0.4.5-1.tar.gz";
    name = "0.4.5-1.tar.gz";
    sha256 = "ad1624b792aa8fbd3ac9a275a8449acabb0f07bd940d7465f25e248667a3d7bd";
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
