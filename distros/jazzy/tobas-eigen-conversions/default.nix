
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, geometry-msgs }:
buildRosPackage {
  pname = "ros-jazzy-tobas-eigen-conversions";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_eigen_conversions/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "77c895d5d6a82a2667043118db97ef028aea49ba26f02ac064975f7000a322fb";
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
