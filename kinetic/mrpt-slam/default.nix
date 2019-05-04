
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, mrpt-rbpf-slam, mrpt-icp-slam-2d, catkin, mrpt-ekf-slam-2d, mrpt-ekf-slam-3d, mrpt-graphslam-2d }:
buildRosPackage {
  pname = "ros-kinetic-mrpt-slam";
  version = "0.1.9";

  src = fetchurl {
    url = https://github.com/mrpt-ros-pkg-release/mrpt_slam-release/archive/release/kinetic/mrpt_slam/0.1.9-0.tar.gz;
    sha256 = "f86603ab478e037f385b55a7fe0656b59c5bc91bce31b7dfb0a0870cc3377bce";
  };

  propagatedBuildInputs = [ mrpt-icp-slam-2d mrpt-rbpf-slam mrpt-ekf-slam-2d mrpt-ekf-slam-3d mrpt-graphslam-2d ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''mrpt_slam'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
