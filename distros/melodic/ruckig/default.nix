
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-melodic-ruckig";
  version = "0.9.1-r1";

  src = fetchurl {
    url = "https://github.com/pantor/ruckig-release/archive/release/melodic/ruckig/0.9.1-1.tar.gz";
    name = "0.9.1-1.tar.gz";
    sha256 = "6d6f43c8b141dd001ddc1854bb9db82180345f2d3da9ea79337676e136d175bc";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Instantaneous Motion Generation for Robots and Machines.'';
    license = with lib.licenses; [ mit ];
  };
}
