
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mrpt-ekf-slam-2d, mrpt-ekf-slam-3d, mrpt-graphslam-2d, mrpt-icp-slam-2d, mrpt-rbpf-slam }:
buildRosPackage {
  pname = "ros-noetic-mrpt-slam";
  version = "0.1.18-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_slam-release/archive/release/noetic/mrpt_slam/0.1.18-1.tar.gz";
    name = "0.1.18-1.tar.gz";
    sha256 = "ee7d6ba589a47c49b016e2357feff6de7f3d22716d7629c91bd60e90b0b073d8";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ mrpt-ekf-slam-2d mrpt-ekf-slam-3d mrpt-graphslam-2d mrpt-icp-slam-2d mrpt-rbpf-slam ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "mrpt_slam";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
