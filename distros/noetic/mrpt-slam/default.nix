
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mrpt-ekf-slam-2d, mrpt-ekf-slam-3d, mrpt-graphslam-2d, mrpt-icp-slam-2d, mrpt-rbpf-slam }:
buildRosPackage {
  pname = "ros-noetic-mrpt-slam";
  version = "0.1.17-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_slam-release/archive/release/noetic/mrpt_slam/0.1.17-1.tar.gz";
    name = "0.1.17-1.tar.gz";
    sha256 = "9c4981f13e6dd1a4d08c77553718dc1a2a81fb00ad51950fdd5678faffee0a13";
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
