
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rtt-actionlib-msgs, rtt-diagnostic-msgs, rtt-geometry-msgs, rtt-nav-msgs, rtt-sensor-msgs, rtt-shape-msgs, rtt-stereo-msgs, rtt-trajectory-msgs, rtt-visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rtt-common-msgs";
  version = "2.9.2-r1";

  src = fetchurl {
    url = "https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/kinetic/rtt_common_msgs/2.9.2-1.tar.gz";
    name = "2.9.2-1.tar.gz";
    sha256 = "7e007c51dac46d6e6109aa522a7c8ac2a381b3eddfa1c250c2f670122d489912";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rtt-actionlib-msgs rtt-diagnostic-msgs rtt-geometry-msgs rtt-nav-msgs rtt-sensor-msgs rtt-shape-msgs rtt-stereo-msgs rtt-trajectory-msgs rtt-visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rtt_common_msgs package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
