
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, marker-msgs, tf, rosbag, catkin, sensor-msgs, nav-msgs, mrpt-msgs, mrpt1, dynamic-reconfigure, std-msgs, mrpt-bridge, roscpp }:
buildRosPackage {
  pname = "ros-melodic-mrpt-rawlog";
  version = "0.1.22";

  src = fetchurl {
    url = https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/melodic/mrpt_rawlog/0.1.22-0.tar.gz;
    sha256 = "96ccf33cb252bc9dadc410fc8588e7fae75559a5f3d9f6d32fdd4f95f2a99337";
  };

  buildInputs = [ marker-msgs tf rosbag sensor-msgs nav-msgs mrpt-msgs mrpt1 dynamic-reconfigure std-msgs mrpt-bridge roscpp ];
  propagatedBuildInputs = [ marker-msgs tf rosbag sensor-msgs nav-msgs mrpt-msgs mrpt1 dynamic-reconfigure std-msgs mrpt-bridge roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package enables you to record a rawlog from a ROS drive robot.
  At the moment the package is able to deal with odometry and 2d laser scans.'';
    #license = lib.licenses.BSD;
  };
}
