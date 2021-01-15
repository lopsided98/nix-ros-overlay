
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, marker-msgs, mrpt-bridge, mrpt-msgs, mrpt1, nav-msgs, rosbag, roscpp, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-mrpt-rawlog";
  version = "0.1.26-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/melodic/mrpt_rawlog/0.1.26-1.tar.gz";
    name = "0.1.26-1.tar.gz";
    sha256 = "e71c97fb56f14c6fb15a0cbc6744aa2cd5d16e2a536f39c0ae7c25e209b5bfd3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ dynamic-reconfigure marker-msgs mrpt-bridge mrpt-msgs mrpt1 nav-msgs rosbag roscpp sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package enables you to record a rawlog from a ROS drive robot.
  At the moment the package is able to deal with odometry and 2d laser scans.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
