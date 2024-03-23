
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-kernel, mrpt2 }:
buildRosPackage {
  pname = "ros-iron-mola-input-kitti-dataset";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/iron/mola_input_kitti_dataset/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "f8e21c9ff6382c2100b2d0edcf089f44765c74deb8f7a8e866e634c20d2f2b7e";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mola-kernel mrpt2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Offline RawDataSource from Kitti odometry/SLAM datasets";
    license = with lib.licenses; [ gpl3Only ];
  };
}
