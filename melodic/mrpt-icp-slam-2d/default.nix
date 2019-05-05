
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslaunch, tf, sensor-msgs, catkin, mrpt-rawlog, roslib, nav-msgs, mrpt1, rviz, visualization-msgs, dynamic-reconfigure, std-msgs, mrpt-bridge, roscpp }:
buildRosPackage {
  pname = "ros-melodic-mrpt-icp-slam-2d";
  version = "0.1.9";

  src = fetchurl {
    url = https://github.com/mrpt-ros-pkg-release/mrpt_slam-release/archive/release/melodic/mrpt_icp_slam_2d/0.1.9-0.tar.gz;
    sha256 = "aca7e53d844693e92f1d043660b5982dce6739932f68f63943fb87763bb6a616";
  };

  buildInputs = [ mrpt-bridge tf sensor-msgs roslib nav-msgs mrpt1 visualization-msgs dynamic-reconfigure std-msgs roslaunch roscpp ];
  propagatedBuildInputs = [ mrpt-bridge sensor-msgs mrpt-rawlog roscpp roslib nav-msgs rviz mrpt1 visualization-msgs dynamic-reconfigure std-msgs roslaunch tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''mrpt_icp_slam_2d contains a wrapper on MRPT's 2D ICP-SLAM algorithms.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
