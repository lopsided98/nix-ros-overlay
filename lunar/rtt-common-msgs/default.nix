
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rtt-nav-msgs, rtt-geometry-msgs, rtt-visualization-msgs, catkin, rtt-sensor-msgs, rtt-diagnostic-msgs, rtt-actionlib-msgs, rtt-stereo-msgs, rtt-shape-msgs, rtt-trajectory-msgs }:
buildRosPackage {
  pname = "ros-lunar-rtt-common-msgs";
  version = "2.9.2-r1";

  src = fetchurl {
    url = https://github.com/orocos-gbp/rtt_ros_integration-release/archive/release/lunar/rtt_common_msgs/2.9.2-1.tar.gz;
    sha256 = "ab5dfb6eaf495a9419b575cf213ed9dceec8cca2ac43494a428677fbfbe9e1ae";
  };

  propagatedBuildInputs = [ rtt-visualization-msgs rtt-nav-msgs rtt-geometry-msgs rtt-sensor-msgs rtt-diagnostic-msgs rtt-actionlib-msgs rtt-stereo-msgs rtt-shape-msgs rtt-trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rtt_common_msgs package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
