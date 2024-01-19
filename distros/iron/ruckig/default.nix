
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-iron-ruckig";
  version = "0.9.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ruckig-release/archive/release/iron/ruckig/0.9.2-4.tar.gz";
    name = "0.9.2-4.tar.gz";
    sha256 = "fc931da2cc3e49e11991c5efca153b2ae317f511e78435a8c05ad478b5d5fe42";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Instantaneous Motion Generation for Robots and Machines.'';
    license = with lib.licenses; [ mit ];
  };
}
