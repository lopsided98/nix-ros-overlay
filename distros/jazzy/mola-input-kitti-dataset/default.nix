
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-kernel, mrpt-libmaps }:
buildRosPackage {
  pname = "ros-jazzy-mola-input-kitti-dataset";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/jazzy/mola_input_kitti_dataset/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "b2e6909715a97919ebbc953ed85ec7196cff63f81b50b0ccf1a17e557772e298";
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
