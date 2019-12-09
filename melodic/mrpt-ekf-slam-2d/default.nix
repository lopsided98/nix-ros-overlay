
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, mrpt1, sensor-msgs, dynamic-reconfigure, std-msgs, roslaunch, tf, roslib, catkin, rviz, mrpt-rawlog, mrpt-bridge, roscpp, visualization-msgs, nav-msgs }:
buildRosPackage {
  pname = "ros-melodic-mrpt-ekf-slam-2d";
  version = "0.1.10-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_slam-release/archive/release/melodic/mrpt_ekf_slam_2d/0.1.10-1.tar.gz";
    name = "0.1.10-1.tar.gz";
    sha256 = "51decbfdfc3f8107bec91c24d0525839afadadb3c4252263e6e24eea49c76bb0";
  };

  buildType = "catkin";
  buildInputs = [ mrpt1 sensor-msgs dynamic-reconfigure std-msgs roslaunch tf roslib roscpp visualization-msgs mrpt-bridge nav-msgs ];
  propagatedBuildInputs = [ mrpt1 sensor-msgs nav-msgs dynamic-reconfigure std-msgs tf roslib rviz mrpt-rawlog mrpt-bridge roscpp visualization-msgs roslaunch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is a wrapper for the implementation of EKF-based SLAM with range-bearing sensors, odometry, and a 2D (+heading) robot pose, and 2D landmarks.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
