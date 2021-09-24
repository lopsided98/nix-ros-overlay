
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, eigen, libccd, rmf-cmake-uncrustify, rmf-utils }:
buildRosPackage {
  pname = "ros-galactic-rmf-traffic";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic-release/archive/release/galactic/rmf_traffic/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "2dc63ae78516675b4baa8f03421f6c16c26fe3a4574b294f667950974b1bcfe6";
  };

  buildType = "cmake";
  checkInputs = [ ament-cmake-catch2 rmf-cmake-uncrustify ];
  propagatedBuildInputs = [ eigen libccd rmf-utils ];

  meta = {
    description = ''Package for managing traffic in the Robotics Middleware Framework'';
    license = with lib.licenses; [ asl20 ];
  };
}
