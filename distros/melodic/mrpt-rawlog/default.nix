
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, marker-msgs, mrpt-bridge, mrpt-msgs, mrpt2, nav-msgs, rosbag, roscpp, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-mrpt-rawlog";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/melodic/mrpt_rawlog/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "d418ff87ddff3ead415f7c555c2c7ca2caf900f0059d3c2a9be23b3ffb5c1bf7";
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
