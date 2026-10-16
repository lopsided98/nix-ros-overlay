
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-math }:
buildRosPackage {
  pname = "ros-jazzy-tobas-algorithm";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_algorithm/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "ed26764c68fffc76802e6b411fc90ec97db7d0352acd5c59f288df4819dde860";
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
