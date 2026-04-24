
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-kernel, mrpt-libmath, mrpt-libobs }:
buildRosPackage {
  pname = "ros-jazzy-mola-input-euroc-dataset";
  version = "2.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/jazzy/mola_input_euroc_dataset/2.7.0-1.tar.gz";
    name = "2.7.0-1.tar.gz";
    sha256 = "665c5b4265d8c2ad8ec77089d87a35387317041c0a550bdccc6443b4e34be87e";
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
