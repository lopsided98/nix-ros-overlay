
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ceres-solver, cmake, eigen, fmt }:
buildRosPackage {
  pname = "ros-lyrical-sophus";
  version = "1.22.9102-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sophus-release/archive/release/lyrical/sophus/1.22.9102-4.tar.gz";
    name = "1.22.9102-4.tar.gz";
    sha256 = "dc28983594055ab25e35adc7486dbb7f928cc15d228b3b55fdaac954bdc41aba";
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
