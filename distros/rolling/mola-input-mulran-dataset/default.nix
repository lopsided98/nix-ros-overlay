
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-kernel, mrpt-libmaps, mrpt-libposes }:
buildRosPackage {
  pname = "ros-rolling-mola-input-mulran-dataset";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_input_mulran_dataset/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "7711bbedf00e67ef25209ed1dd57fcbf89f728f6d31153e4c0e40eca6b289b08";
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
