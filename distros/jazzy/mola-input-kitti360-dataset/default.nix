
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-kernel, mrpt-libmaps }:
buildRosPackage {
  pname = "ros-jazzy-mola-input-kitti360-dataset";
  version = "2.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/jazzy/mola_input_kitti360_dataset/2.5.0-1.tar.gz";
    name = "2.5.0-1.tar.gz";
    sha256 = "97c252433f23ae22f12b2d7ff3d4b146c2c112248fd34d35392235e5d6033128";
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
