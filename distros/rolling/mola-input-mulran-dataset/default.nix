
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-kernel, mrpt-libmaps, mrpt-libposes }:
buildRosPackage {
  pname = "ros-rolling-mola-input-mulran-dataset";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_input_mulran_dataset/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "e887d486b9118469b5ea6e570aee98e4f90ae705206c5bd8ddb5f8df37ba7bc4";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mola-kernel mrpt-libmaps mrpt-libposes ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Offline RawDataSource from MulRan datasets";
    license = with lib.licenses; [ gpl3Only ];
  };
}
