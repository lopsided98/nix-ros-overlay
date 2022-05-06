
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, marker-msgs, mrpt-bridge, mrpt-msgs, mrpt2, nav-msgs, rosbag, roscpp, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-mrpt-rawlog";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/noetic/mrpt_rawlog/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "d7fb9297a5262abbf3b4134468e1d7dc3b295e9dceb65cb229218c71b7e2aba3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dynamic-reconfigure marker-msgs mrpt-bridge mrpt-msgs mrpt2 nav-msgs rosbag roscpp sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package enables you to record a rawlog from a ROS drive robot.
  At the moment the package is able to deal with odometry and 2d laser scans.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
