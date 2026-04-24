
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-kernel, mrpt-libmaps }:
buildRosPackage {
  pname = "ros-rolling-mola-input-kitti-dataset";
  version = "2.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/rolling/mola_input_kitti_dataset/2.7.0-1.tar.gz";
    name = "2.7.0-1.tar.gz";
    sha256 = "52b118cae1b6b120c0feaacaa980bea06d2ff7774ceeb952c6ce5766fef0ad81";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mola-kernel mrpt-libmaps ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Offline RawDataSource from Kitti odometry/SLAM datasets";
    license = with lib.licenses; [ gpl3Only ];
  };
}
