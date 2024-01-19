
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen }:
buildRosPackage {
  pname = "ros-humble-sophus";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sophus-release/archive/release/humble/sophus/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "be643cba4f75f64999979f3af952e7187925b671a46aeabeafabdeb3478ea17c";
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
