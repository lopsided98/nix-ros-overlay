
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, gtest, ros-industrial-cmake-boilerplate }:
buildRosPackage {
  pname = "ros-lyrical-boost-plugin-loader";
  version = "0.4.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/boost_plugin_loader-release/archive/release/lyrical/boost_plugin_loader/0.4.5-1.tar.gz";
    name = "0.4.5-1.tar.gz";
    sha256 = "e3a1529803e32443d651331a97440c45a78a64e4ee43ad9083f3cc1c4ba6bf01";
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
