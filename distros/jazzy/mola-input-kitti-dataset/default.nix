
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-kernel, mrpt-libmaps }:
buildRosPackage {
  pname = "ros-jazzy-mola-input-kitti-dataset";
  version = "1.6.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/jazzy/mola_input_kitti_dataset/1.6.4-1.tar.gz";
    name = "1.6.4-1.tar.gz";
    sha256 = "1eb4e128702979652fa796fda83289037293a6e9a4c1a5282a9c9858e5937fbe";
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
