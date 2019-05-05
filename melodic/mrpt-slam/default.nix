
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, mrpt-rbpf-slam, mrpt-icp-slam-2d, catkin, mrpt-ekf-slam-2d, mrpt-ekf-slam-3d, mrpt-graphslam-2d }:
buildRosPackage {
  pname = "ros-melodic-mrpt-slam";
  version = "0.1.9";

  src = fetchurl {
    url = https://github.com/mrpt-ros-pkg-release/mrpt_slam-release/archive/release/melodic/mrpt_slam/0.1.9-0.tar.gz;
    sha256 = "3170fb5eacbd6bf03b50022ea4c324dd4e147fbcecbee376c4203e52ca004a95";
  };

  propagatedBuildInputs = [ mrpt-icp-slam-2d mrpt-rbpf-slam mrpt-ekf-slam-2d mrpt-ekf-slam-3d mrpt-graphslam-2d ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''mrpt_slam'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
