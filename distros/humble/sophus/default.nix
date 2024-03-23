
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen }:
buildRosPackage {
  pname = "ros-humble-sophus";
  version = "1.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sophus-release/archive/release/humble/sophus/1.3.2-1.tar.gz";
    name = "1.3.2-1.tar.gz";
    sha256 = "19f18c6a0dad27ebd33c4e872c7c7346bff95ad8e81f15bbc60a711d46da44a4";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ eigen ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "C++ implementation of Lie Groups using Eigen.";
    license = with lib.licenses; [ mit ];
  };
}
