
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, ament-cmake-uncrustify, cmake, eigen, eigen3-cmake-module, libccd, rmf-utils }:
buildRosPackage {
  pname = "ros-humble-rmf-traffic";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic-release/archive/release/humble/rmf_traffic/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "90823a43012e9bf3b27bd205d4b9ab952db2c5302e26d190ef97cc994abea46e";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ ament-cmake-catch2 ament-cmake-uncrustify ];
  propagatedBuildInputs = [ eigen eigen3-cmake-module libccd rmf-utils ];
  nativeBuildInputs = [ cmake eigen3-cmake-module ];

  meta = {
    description = ''Package for managing traffic in the Robotics Middleware Framework'';
    license = with lib.licenses; [ asl20 ];
  };
}
