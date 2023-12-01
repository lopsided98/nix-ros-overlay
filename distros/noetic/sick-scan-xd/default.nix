
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, diagnostic-updater, dynamic-reconfigure, geometry-msgs, message-generation, message-runtime, nav-msgs, roscpp, roslib, rospy, rviz, sensor-msgs, std-msgs, tf, tf2, tf2-ros, visualization-msgs, xacro }:
buildRosPackage {
  pname = "ros-noetic-sick-scan-xd";
  version = "3.1.1-r1";

  src = fetchurl {
    url = "https://github.com/SICKAG/sick_scan_xd-release/archive/release/noetic/sick_scan_xd/3.1.1-1.tar.gz";
    name = "3.1.1-1.tar.gz";
    sha256 = "28d3520a82e325983cbc2e4ba39d2463659b2f93348942e46de1491373fb63dc";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ diagnostic-msgs diagnostic-updater dynamic-reconfigure geometry-msgs message-runtime nav-msgs roscpp roslib rospy rviz sensor-msgs std-msgs tf tf2 tf2-ros visualization-msgs xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS 1 and 2 driver for SICK scanner'';
    license = with lib.licenses; [ "Apache-License,-Version-2.0,-see-"http-www.apache.org-licenses-LICENSE-2.0"" ];
  };
}
