
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, marker-msgs, mrpt-bridge, mrpt-msgs, mrpt1, nav-msgs, rosbag, roscpp, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-mrpt-rawlog";
  version = "0.1.26-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/kinetic/mrpt_rawlog/0.1.26-1.tar.gz";
    name = "0.1.26-1.tar.gz";
    sha256 = "ccd43ffebe6410969784d57e322863448e42fed4d4ed6b0ed5238f4435f15e6f";
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
