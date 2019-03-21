
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, mrpt-rbpf-slam, mrpt-icp-slam-2d, catkin, mrpt-ekf-slam-2d, mrpt-ekf-slam-3d }:
buildRosPackage {
  pname = "ros-kinetic-mrpt-slam";
  version = "0.1.6";

  src = fetchurl {
    url = https://github.com/mrpt-ros-pkg-release/mrpt_slam-release/archive/release/kinetic/mrpt_slam/0.1.6-0.tar.gz;
    sha256 = "bed5a824f381d71ebe5db2f09a0a884c7b2c5f135b11a97acdbd2377d79eb1ab";
  };

  propagatedBuildInputs = [ mrpt-ekf-slam-3d mrpt-icp-slam-2d mrpt-ekf-slam-2d mrpt-rbpf-slam ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''mrpt_slam'';
    #license = lib.licenses.BSD;
  };
}
