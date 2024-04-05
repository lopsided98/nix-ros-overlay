
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mrpt-ekf-slam-2d, mrpt-ekf-slam-3d, mrpt-graphslam-2d, mrpt-icp-slam-2d, mrpt-rbpf-slam }:
buildRosPackage {
  pname = "ros-noetic-mrpt-slam";
  version = "0.1.16-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_slam-release/archive/release/noetic/mrpt_slam/0.1.16-1.tar.gz";
    name = "0.1.16-1.tar.gz";
    sha256 = "c5e69f9df3ab01c324944053392d253237830bc4f7021828dad15458645c1f17";
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
