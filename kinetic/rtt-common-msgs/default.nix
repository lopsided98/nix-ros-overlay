
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rtt-nav-msgs, rtt-geometry-msgs, rtt-visualization-msgs, catkin, rtt-sensor-msgs, rtt-diagnostic-msgs, rtt-actionlib-msgs, rtt-stereo-msgs, rtt-shape-msgs, rtt-trajectory-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rtt-common-msgs";
  version = "2.9.1";

  src = fetchurl {
    url = https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/kinetic/rtt_common_msgs/2.9.1-0.tar.gz;
    sha256 = "357976070fb40fd4a22cb2f3464e05825ac10fc3dfcfcaf891eafda82e864366";
  };

  propagatedBuildInputs = [ rtt-visualization-msgs rtt-nav-msgs rtt-geometry-msgs rtt-sensor-msgs rtt-diagnostic-msgs rtt-actionlib-msgs rtt-stereo-msgs rtt-shape-msgs rtt-trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rtt_common_msgs package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
