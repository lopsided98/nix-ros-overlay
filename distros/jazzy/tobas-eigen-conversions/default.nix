
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, geometry-msgs }:
buildRosPackage {
  pname = "ros-jazzy-tobas-eigen-conversions";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_eigen_conversions/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "8f091eaf7918025cca2ef6f18128b9e513ab82fa79529e4d09974801e185a8f4";
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
