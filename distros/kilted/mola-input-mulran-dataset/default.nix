
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mola-common, mola-kernel, mrpt-maps, mrpt-math, mrpt-poses }:
buildRosPackage {
  pname = "ros-kilted-mola-input-mulran-dataset";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_academic_datasets-release/archive/release/kilted/mola_input_mulran_dataset/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "6ba7c9007b9b451096cde7c998306aedc16dc138dfa7522e465642100a3609e5";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen ];
  propagatedBuildInputs = [ mola-common mola-kernel mrpt-maps mrpt-math mrpt-poses ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Offline RawDataSource from MulRan datasets";
    license = with lib.licenses; [ gpl3Only ];
  };
}
