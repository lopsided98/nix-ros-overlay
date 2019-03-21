
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, mrpt-rbpf-slam, mrpt-icp-slam-2d, catkin, mrpt-ekf-slam-2d, mrpt-ekf-slam-3d, mrpt-graphslam-2d }:
buildRosPackage {
  pname = "ros-melodic-mrpt-slam";
  version = "0.1.8";

  src = fetchurl {
    url = https://github.com/mrpt-ros-pkg-release/mrpt_slam-release/archive/release/melodic/mrpt_slam/0.1.8-0.tar.gz;
    sha256 = "a4c731a6ef22aa5b1243b1abbc78b5d03ba7765aadb03c7a205a2f37258c7f23";
  };

  propagatedBuildInputs = [ mrpt-rbpf-slam mrpt-ekf-slam-3d mrpt-icp-slam-2d mrpt-ekf-slam-2d mrpt-graphslam-2d ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''mrpt_slam'';
    #license = lib.licenses.BSD;
  };
}
