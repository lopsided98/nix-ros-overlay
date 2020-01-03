
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rtt-geometry-msgs, rtt-roscomm, rtt-std-msgs, shape-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rtt-shape-msgs";
  version = "2.9.2-r1";

  src = fetchurl {
    url = "https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/kinetic/rtt_shape_msgs/2.9.2-1.tar.gz";
    name = "2.9.2-1.tar.gz";
    sha256 = "3ffd4307395eb79c62071c191c2473d19162ac6dd1e7be0874013f2d3fc7497f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rtt-geometry-msgs rtt-roscomm rtt-std-msgs shape-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides an rtt typekit for ROS shape_msgs messages.

    It allows you to use ROS messages transparently in
    RTT components and applications.

    This package was automatically generated by the
    create_rtt_msgs generator and should not be manually
    modified.

    See the http://ros.org/wiki/shape_msgs documentation
    for the documentation of the ROS messages in this
    typekit.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
