
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-kernel, mrpt-libmaps, mrpt-libposes }:
buildRosPackage {
  pname = "ros-jazzy-mola-input-mulran-dataset";
  version = "2.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/jazzy/mola_input_mulran_dataset/2.5.0-1.tar.gz";
    name = "2.5.0-1.tar.gz";
    sha256 = "226103191f1f57e299d7c5f07d4b8b39a4dafd53d2d313ca81d0a7b83e94af06";
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
