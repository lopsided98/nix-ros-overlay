
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-rolling-ruckig";
  version = "0.6.3-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ruckig-release/archive/release/rolling/ruckig/0.6.3-6.tar.gz";
    name = "0.6.3-6.tar.gz";
    sha256 = "4031fe125b7b93023a90fa783a9bcf717ea98223e18cb0b267674e7df2cb9fd5";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Instantaneous Motion Generation for Robots and Machines.'';
    license = with lib.licenses; [ mit ];
  };
}
