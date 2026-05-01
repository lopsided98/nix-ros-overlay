
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-kernel, mrpt-libmaps }:
buildRosPackage {
  pname = "ros-lyrical-mola-input-kitti360-dataset";
  version = "2.7.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/lyrical/mola_input_kitti360_dataset/2.7.0-3.tar.gz";
    name = "2.7.0-3.tar.gz";
    sha256 = "455272326b84bd6f8b9b4144e7ed9bae407ac94dde88fdde036d0ea2bf5ead31";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mola-kernel mrpt-libmaps ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Offline RawDataSource from Kitti-360 datasets";
    license = with lib.licenses; [ gpl3Only ];
  };
}
