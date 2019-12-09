
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, mrpt1, sensor-msgs, dynamic-reconfigure, std-msgs, roslaunch, tf, cmake-modules, roslib, catkin, rviz, mrpt-rawlog, mrpt-bridge, roscpp, visualization-msgs, nav-msgs }:
buildRosPackage {
  pname = "ros-melodic-mrpt-ekf-slam-3d";
  version = "0.1.10-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_slam-release/archive/release/melodic/mrpt_ekf_slam_3d/0.1.10-1.tar.gz";
    name = "0.1.10-1.tar.gz";
    sha256 = "a2e86b343a30fa5f18bacf864fbdbc0623114a646802dd39fabab40f08ab3535";
  };

  buildType = "catkin";
  buildInputs = [ mrpt1 sensor-msgs dynamic-reconfigure std-msgs roslaunch tf roslib roscpp cmake-modules visualization-msgs mrpt-bridge nav-msgs ];
  propagatedBuildInputs = [ mrpt1 sensor-msgs nav-msgs dynamic-reconfigure std-msgs cmake-modules tf roslib rviz mrpt-rawlog mrpt-bridge roscpp visualization-msgs roslaunch ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is a wrapper for the implementation of EKF-based SLAM with range-bearing sensors, odometry, a full 6D robot pose, and 3D landmarks.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
