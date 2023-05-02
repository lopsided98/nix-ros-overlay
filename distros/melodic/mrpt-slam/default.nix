
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, mrpt-ekf-slam-2d, mrpt-ekf-slam-3d, mrpt-icp-slam-2d, mrpt-rbpf-slam }:
buildRosPackage {
  pname = "ros-melodic-mrpt-slam";
  version = "0.1.13-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_slam-release/archive/release/melodic/mrpt_slam/0.1.13-1.tar.gz";
    name = "0.1.13-1.tar.gz";
    sha256 = "5c3b260004cc0b2a42c940cffc13cd17d6ca61cd4a32ea7848b4fa931d545367";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ mrpt-ekf-slam-2d mrpt-ekf-slam-3d mrpt-icp-slam-2d mrpt-rbpf-slam ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''mrpt_slam'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
