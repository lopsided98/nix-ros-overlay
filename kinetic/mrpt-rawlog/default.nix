
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, marker-msgs, tf, rosbag, catkin, sensor-msgs, nav-msgs, mrpt-msgs, mrpt1, dynamic-reconfigure, std-msgs, mrpt-bridge, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-mrpt-rawlog";
  version = "0.1.24";

  src = fetchurl {
    url = https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/kinetic/mrpt_rawlog/0.1.24-0.tar.gz;
    sha256 = "6fa3e4ca11a19d96c8bd9cf7137e27bdb3dcd65f55c0c50aaed4e47d1322bcdb";
  };

  buildInputs = [ marker-msgs tf rosbag sensor-msgs nav-msgs mrpt-msgs mrpt1 dynamic-reconfigure std-msgs mrpt-bridge roscpp ];
  propagatedBuildInputs = [ marker-msgs tf rosbag sensor-msgs nav-msgs mrpt-msgs mrpt1 dynamic-reconfigure std-msgs mrpt-bridge roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package enables you to record a rawlog from a ROS drive robot.
  At the moment the package is able to deal with odometry and 2d laser scans.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
