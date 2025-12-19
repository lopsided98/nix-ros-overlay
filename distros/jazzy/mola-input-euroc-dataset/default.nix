
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-kernel, mrpt-libmath, mrpt-libobs }:
buildRosPackage {
  pname = "ros-jazzy-mola-input-euroc-dataset";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/jazzy/mola_input_euroc_dataset/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "280cbcf9d88c06b921300b86e14e1c105c5b7abd293881e4072af332b4f02e36";
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
