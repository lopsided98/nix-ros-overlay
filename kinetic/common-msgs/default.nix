
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, trajectory-msgs, sensor-msgs, diagnostic-msgs, geometry-msgs, catkin, shape-msgs, stereo-msgs, actionlib-msgs, visualization-msgs, nav-msgs }:
buildRosPackage {
  pname = "ros-kinetic-common-msgs";
  version = "1.12.7";

  src = fetchurl {
    url = "https://github.com/ros-gbp/common_msgs-release/archive/release/kinetic/common_msgs/1.12.7-0.tar.gz";
    name = "1.12.7-0.tar.gz";
    sha256 = "d3f95ebbb2236c7deaf64b57c4764fe48e0c667eb6defd5d98c95cd12b50f13d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ trajectory-msgs sensor-msgs geometry-msgs diagnostic-msgs shape-msgs stereo-msgs actionlib-msgs visualization-msgs nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''common_msgs contains messages that are widely used by other ROS packages.
    These includes messages for
    actions (<a href="http://wiki.ros.org/actionlib_msgs">actionlib_msgs</a>),
    diagnostics (<a href="http://wiki.ros.org/diagnostic_msgs">diagnostic_msgs</a>),
    geometric primitives (<a href="http://wiki.ros.org/geometry_msgs">geometry_msgs</a>),
    robot navigation (<a href="http://wiki.ros.org/nav_msgs">nav_msgs</a>),
    and common sensors (<a href="http://wiki.ros.org/sensor_msgs">sensor_msgs</a>), such as laser range finders, cameras, point clouds.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
