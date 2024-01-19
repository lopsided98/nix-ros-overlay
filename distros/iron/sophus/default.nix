
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen }:
buildRosPackage {
  pname = "ros-iron-sophus";
  version = "1.3.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sophus-release/archive/release/iron/sophus/1.3.1-3.tar.gz";
    name = "1.3.1-3.tar.gz";
    sha256 = "8d33ae85782f2f8868ad6515b74177bdb1b6231390562cc85bffeffb0d1d0827";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ eigen ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''C++ implementation of Lie Groups using Eigen.'';
    license = with lib.licenses; [ mit ];
  };
}
