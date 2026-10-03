
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-math }:
buildRosPackage {
  pname = "ros-jazzy-tobas-algorithm";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_algorithm/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "1e04a3e7d440882a1865d26bd4e32d52c40a95124ac8f482155c3931bd5560b2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-math ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "General-purpose C++ algorithms for binary data, CRC calculation, stable summation, and range handling.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
