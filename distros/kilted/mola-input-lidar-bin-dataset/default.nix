
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mola-common, mola-kernel, mola-yaml, mrpt-core, mrpt-maps, mrpt-obs, mrpt-system }:
buildRosPackage {
  pname = "ros-kilted-mola-input-lidar-bin-dataset";
  version = "3.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola-release/archive/release/kilted/mola_input_lidar_bin_dataset/3.4.0-1.tar.gz";
    name = "3.4.0-1.tar.gz";
    sha256 = "34d1ecfb0460ddb53e3e5f80041fb8f21814d5cc0759c1d54e96beb40d44a0ba";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mola-common mola-kernel mola-yaml mrpt-core mrpt-maps mrpt-obs mrpt-system ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Offline RawDataSource from LiDAR datasets stored as `.bin` files in the Kitti binary format";
    license = with lib.licenses; [ gpl3Only ];
  };
}
