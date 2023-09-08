
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-kernel, mrpt2 }:
buildRosPackage {
  pname = "ros-rolling-mola-input-euroc-dataset";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_input_euroc_dataset/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "d40b42ffb8b5a0a4832a28fec69a65cff58ed0aafed4a36da65eca638aa47dcf";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mola-kernel mrpt2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Offline RawDataSource from EUROC SLAM datasets'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
