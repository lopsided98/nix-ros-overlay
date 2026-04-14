
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-kernel, mrpt-libmaps }:
buildRosPackage {
  pname = "ros-humble-mola-input-kitti-dataset";
  version = "2.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/humble/mola_input_kitti_dataset/2.6.1-1.tar.gz";
    name = "2.6.1-1.tar.gz";
    sha256 = "3bb83873a1f976825a5466bdaa8685f58c1de8d9bd350b4857069b9a0fb47bb1";
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
