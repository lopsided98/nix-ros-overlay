
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen }:
buildRosPackage {
  pname = "ros-iron-sophus";
  version = "1.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sophus-release/archive/release/iron/sophus/1.3.2-1.tar.gz";
    name = "1.3.2-1.tar.gz";
    sha256 = "d1e8183120617de2f79ea109679f1ac23eabeef14c68991e11a6ea3099cff1ce";
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
