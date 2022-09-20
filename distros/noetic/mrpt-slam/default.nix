
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mrpt-ekf-slam-2d, mrpt-ekf-slam-3d, mrpt-graphslam-2d, mrpt-icp-slam-2d, mrpt-rbpf-slam }:
buildRosPackage {
  pname = "ros-noetic-mrpt-slam";
  version = "0.1.11-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_slam-release/archive/release/noetic/mrpt_slam/0.1.11-1.tar.gz";
    name = "0.1.11-1.tar.gz";
    sha256 = "732c625387478084e7d28ad83657ca7af8d807bdcf523cbdeaa1f4d173c26a3d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ mrpt-ekf-slam-2d mrpt-ekf-slam-3d mrpt-graphslam-2d mrpt-icp-slam-2d mrpt-rbpf-slam ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''mrpt_slam'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
