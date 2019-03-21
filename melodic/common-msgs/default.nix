
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, shape-msgs, actionlib-msgs, trajectory-msgs, sensor-msgs, catkin, nav-msgs, diagnostic-msgs, visualization-msgs, geometry-msgs, stereo-msgs }:
buildRosPackage {
  pname = "ros-melodic-common-msgs";
  version = "1.12.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/common_msgs-release/archive/release/melodic/common_msgs/1.12.7-0.tar.gz;
    sha256 = "631a7674053674e50d7fdadc741dcd4f112f0f12c62c179b438e0db457e86a36";
  };

  propagatedBuildInputs = [ shape-msgs actionlib-msgs trajectory-msgs sensor-msgs nav-msgs diagnostic-msgs visualization-msgs geometry-msgs stereo-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''common_msgs contains messages that are widely used by other ROS packages.
    These includes messages for
    actions (<a href="http://wiki.ros.org/actionlib_msgs">actionlib_msgs</a>),
    diagnostics (<a href="http://wiki.ros.org/diagnostic_msgs">diagnostic_msgs</a>),
    geometric primitives (<a href="http://wiki.ros.org/geometry_msgs">geometry_msgs</a>),
    robot navigation (<a href="http://wiki.ros.org/nav_msgs">nav_msgs</a>),
    and common sensors (<a href="http://wiki.ros.org/sensor_msgs">sensor_msgs</a>), such as laser range finders, cameras, point clouds.'';
    #license = lib.licenses.BSD;
  };
}
