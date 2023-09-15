
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-kernel, mrpt2 }:
buildRosPackage {
  pname = "ros-rolling-mola-input-kitti-dataset";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_input_kitti_dataset/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "28096ed6ee91ec49b8ced0d152d778c5e14635d83d47054b83f2518230486e37";
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
