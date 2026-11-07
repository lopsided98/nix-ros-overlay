
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, mola-common, mola-kernel, mrpt-maps, mrpt-math }:
buildRosPackage {
  pname = "ros-kilted-mola-input-kitti-dataset";
  version = "3.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mola_academic_datasets-release/archive/release/kilted/mola_input_kitti_dataset/3.1.1-1.tar.gz";
    name = "3.1.1-1.tar.gz";
    sha256 = "9c872b2ff2f9dba21130a3ab932f19bacce3cd629add3bc30c7ac27117b099d7";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen ];
  propagatedBuildInputs = [ mola-common mola-kernel mrpt-maps mrpt-math ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Offline RawDataSource from Kitti odometry/SLAM datasets";
    license = with lib.licenses; [ gpl3Only ];
  };
}
