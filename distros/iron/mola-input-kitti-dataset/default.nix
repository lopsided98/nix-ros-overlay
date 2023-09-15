
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-kernel, mrpt2 }:
buildRosPackage {
  pname = "ros-iron-mola-input-kitti-dataset";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/iron/mola_input_kitti_dataset/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "a21bceb6d11b63787b47bb0d2907db2ae9c3210d6079d5a7008a90a5c416dd80";
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
