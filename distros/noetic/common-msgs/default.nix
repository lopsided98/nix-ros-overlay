
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-msgs, catkin, diagnostic-msgs, geometry-msgs, nav-msgs, sensor-msgs, shape-msgs, stereo-msgs, trajectory-msgs, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-common-msgs";
  version = "1.13.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/common_msgs-release/archive/release/noetic/common_msgs/1.13.2-1.tar.gz";
    name = "1.13.2-1.tar.gz";
    sha256 = "48aa02c1bd4a4d0673d6f2c3a2f530eac4d90ad326bd3d14481d5b19d11452c6";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib-msgs diagnostic-msgs geometry-msgs nav-msgs sensor-msgs shape-msgs stereo-msgs trajectory-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "common_msgs contains messages that are widely used by other ROS packages.
    These includes messages for
    actions (<a href=\"http://wiki.ros.org/actionlib_msgs\">actionlib_msgs</a>),
    diagnostics (<a href=\"http://wiki.ros.org/diagnostic_msgs\">diagnostic_msgs</a>),
    geometric primitives (<a href=\"http://wiki.ros.org/geometry_msgs\">geometry_msgs</a>),
    robot navigation (<a href=\"http://wiki.ros.org/nav_msgs\">nav_msgs</a>),
    and common sensors (<a href=\"http://wiki.ros.org/sensor_msgs\">sensor_msgs</a>), such as laser range finders, cameras, point clouds.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
