
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, capabilities, catkin, diagnostic-aggregator, diagnostic-msgs, diagnostic-updater, ecl-exceptions, ecl-sigslots, ecl-streams, ecl-threads, geometry-msgs, kobuki-driver, kobuki-ftdi, kobuki-keyop, kobuki-msgs, kobuki-rapps, kobuki-safety-controller, nav-msgs, nodelet, pluginlib, roscpp, rospy, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-kinetic-kobuki-node";
  version = "0.7.6";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/kobuki-release/archive/release/kinetic/kobuki_node/0.7.6-0.tar.gz";
    name = "0.7.6-0.tar.gz";
    sha256 = "0d7add3be65bb923b7f0d3116a2ba9233514c5c4e7109ebbdd7f5736e76a72f6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ angles capabilities diagnostic-aggregator diagnostic-msgs diagnostic-updater ecl-exceptions ecl-sigslots ecl-streams ecl-threads geometry-msgs kobuki-driver kobuki-ftdi kobuki-keyop kobuki-msgs kobuki-rapps kobuki-safety-controller nav-msgs nodelet pluginlib roscpp rospy sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS nodelet for Kobuki: ROS wrapper for the Kobuki driver.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
