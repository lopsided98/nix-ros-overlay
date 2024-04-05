
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-kernel, mrpt2 }:
buildRosPackage {
  pname = "ros-rolling-mola-input-kitti360-dataset";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_input_kitti360_dataset/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "7cc242ba7d40eb9bb99c24c10e27494f7d1c40c49bfa7f8938f8a992d1830fc9";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mola-kernel mrpt2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Offline RawDataSource from Kitti-360 datasets";
    license = with lib.licenses; [ gpl3Only ];
  };
}
