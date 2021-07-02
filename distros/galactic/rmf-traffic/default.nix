
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-catch2, eigen, fcl, libccd, rmf-cmake-uncrustify, rmf-utils }:
buildRosPackage {
  pname = "ros-galactic-rmf-traffic";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic-release/archive/release/galactic/rmf_traffic/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "b4b6789cf2a06f24e396962cf4a92bd3f4a5c1b4e527051a655a78aaf52d46c4";
  };

  buildType = "cmake";
  buildInputs = [ fcl libccd ];
  checkInputs = [ ament-cmake-catch2 rmf-cmake-uncrustify ];
  propagatedBuildInputs = [ eigen rmf-utils ];

  meta = {
    description = ''Package for managing traffic in the Robotics Middleware Framework'';
    license = with lib.licenses; [ asl20 ];
  };
}
