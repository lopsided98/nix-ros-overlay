
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-kilted-ruckig";
  version = "0.9.2-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ruckig-release/archive/release/kilted/ruckig/0.9.2-5.tar.gz";
    name = "0.9.2-5.tar.gz";
    sha256 = "306bce5e774716d0a65b226508905cce42662c7380e0b03fe25d870deab1dfb3";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Instantaneous Motion Generation for Robots and Machines.";
    license = with lib.licenses; [ mit ];
  };
}
