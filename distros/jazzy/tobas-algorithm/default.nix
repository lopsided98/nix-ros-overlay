
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-math }:
buildRosPackage {
  pname = "ros-jazzy-tobas-algorithm";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_algorithm/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "2e33594623938ce5dd8cbd40d47528377654181ee56bf0ab4c1d5cf03d8b744a";
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
