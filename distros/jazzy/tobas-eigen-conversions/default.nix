
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, geometry-msgs }:
buildRosPackage {
  pname = "ros-jazzy-tobas-eigen-conversions";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_eigen_conversions/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "6235e33d20991e3ad7e55d7cc8e655dbf41232b17b90e7bc5bce6775778f2d74";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ eigen geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Conversions between Eigen types and Tobas matrix and vector messages.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
