
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-kernel, mrpt2 }:
buildRosPackage {
  pname = "ros-humble-mola-input-euroc-dataset";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/humble/mola_input_euroc_dataset/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "246079599dabdf945cf7909bfaa0cb86b2a8da162689644e8596ea48545e213a";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mola-kernel mrpt2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Offline RawDataSource from EUROC SLAM datasets";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
