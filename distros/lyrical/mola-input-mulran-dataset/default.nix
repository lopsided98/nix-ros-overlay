
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-kernel, mrpt-libmaps, mrpt-libposes }:
buildRosPackage {
  pname = "ros-lyrical-mola-input-mulran-dataset";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_academic_datasets-release/archive/release/lyrical/mola_input_mulran_dataset/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "d7586bc9341dedab7c4bba7dc675914f004f1029b86a5e9fd7b778fef302c787";
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
