
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-kernel, mrpt-libmaps, mrpt-libposes }:
buildRosPackage {
  pname = "ros-jazzy-mola-input-mulran-dataset";
  version = "2.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/jazzy/mola_input_mulran_dataset/2.7.0-1.tar.gz";
    name = "2.7.0-1.tar.gz";
    sha256 = "f330d2c4bd516c91975b37644e59f22c36055a52f629cba40b5ff27411e6948a";
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
