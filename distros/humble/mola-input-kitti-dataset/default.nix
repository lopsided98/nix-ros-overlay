
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-kernel, mrpt2 }:
buildRosPackage {
  pname = "ros-humble-mola-input-kitti-dataset";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/humble/mola_input_kitti_dataset/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "312cbe0d95877583e8ab55c58bc3b3c4187b23914b482aae71c3e70f59dd738f";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mola-kernel mrpt2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Offline RawDataSource from Kitti odometry/SLAM datasets'';
    license = with lib.licenses; [ gpl3Only ];
  };
}
