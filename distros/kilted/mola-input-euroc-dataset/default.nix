
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-kernel, mrpt-libmath, mrpt-libobs }:
buildRosPackage {
  pname = "ros-kilted-mola-input-euroc-dataset";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/kilted/mola_input_euroc_dataset/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "8f531e8abc7478f95ca67084385d6f6c7a5f2824c8eccf076acf65254b3cb29f";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mola-kernel mrpt-libmath mrpt-libobs ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Offline RawDataSource from EUROC SLAM datasets";
    license = with lib.licenses; [ bsd3 ];
  };
}
