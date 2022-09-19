
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-humble-ruckig";
  version = "0.6.3-r7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ruckig-release/archive/release/humble/ruckig/0.6.3-7.tar.gz";
    name = "0.6.3-7.tar.gz";
    sha256 = "6d01590694ffad000dfeb3c85c90453d725a23d3b58ff3fdf95087455c8e7cdf";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Instantaneous Motion Generation for Robots and Machines.'';
    license = with lib.licenses; [ mit ];
  };
}
