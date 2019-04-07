
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, marker-msgs, tf, rosbag, catkin, sensor-msgs, nav-msgs, mrpt-msgs, mrpt1, dynamic-reconfigure, std-msgs, mrpt-bridge, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-mrpt-rawlog";
  version = "0.1.23";

  src = fetchurl {
    url = https://github.com/mrpt-ros-pkg-release/mrpt_navigation-release/archive/release/kinetic/mrpt_rawlog/0.1.23-0.tar.gz;
    sha256 = "85eccb96a32f94e4b04dedd7127ffe4ec5a2a4e19fd56f19b96ff2fa984dfdc7";
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
