
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-galactic-osrf-testing-tools-cpp";
  version = "1.4.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/osrf_testing_tools_cpp-release/archive/release/galactic/osrf_testing_tools_cpp/1.4.0-2.tar.gz";
    name = "1.4.0-2.tar.gz";
    sha256 = "04c1b6aba93be81b2f04672e915885dc3c40f51382350a034bff994187440479";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Testing tools for C++, and is used in various OSRF projects.'';
    license = with lib.licenses; [ asl20 ];
  };
}
