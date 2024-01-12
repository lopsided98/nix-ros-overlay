
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-rolling-ruckig";
  version = "0.9.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ruckig-release/archive/release/rolling/ruckig/0.9.2-3.tar.gz";
    name = "0.9.2-3.tar.gz";
    sha256 = "5e4350fec9eb0c826890031a6853b3b0420c03809dfbfc2c76cdaef8dbf2ec2f";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Instantaneous Motion Generation for Robots and Machines.'';
    license = with lib.licenses; [ mit ];
  };
}
