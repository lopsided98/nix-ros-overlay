
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, shape-msgs, actionlib-msgs, trajectory-msgs, sensor-msgs, catkin, nav-msgs, diagnostic-msgs, visualization-msgs, geometry-msgs, stereo-msgs }:
buildRosPackage {
  pname = "ros-lunar-common-msgs";
  version = "1.12.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/common_msgs-release/archive/release/lunar/common_msgs/1.12.7-0.tar.gz;
    sha256 = "9a410d99e420983f4362369ccbe734612b5b4f62b2daaa9395053d5f32e188b1";
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
    license = with lib.licenses; [ bsdOriginal ];
  };
}
