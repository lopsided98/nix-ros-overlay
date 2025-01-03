
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ceres-solver, cmake, eigen, fmt }:
buildRosPackage {
  pname = "ros-jazzy-sophus";
  version = "1.22.9102-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sophus-release/archive/release/jazzy/sophus/1.22.9102-2.tar.gz";
    name = "1.22.9102-2.tar.gz";
    sha256 = "3bbcab8844f06c727403f0d602be286fc9779048754b37c23a3a936bee074807";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ ceres-solver eigen fmt ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "C++ implementation of Lie Groups using Eigen.";
    license = with lib.licenses; [ mit ];
  };
}
