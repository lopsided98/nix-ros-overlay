
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, kobuki-msgs, ecl-streams, kobuki-driver, ecl-threads, ecl-exceptions, rospy, diagnostic-msgs, tf, geometry-msgs, capabilities, kobuki-rapps, kobuki-keyop, angles, ecl-sigslots, catkin, nav-msgs, std-msgs, diagnostic-aggregator, roscpp, nodelet, kobuki-ftdi, pluginlib, sensor-msgs, kobuki-safety-controller, diagnostic-updater }:
buildRosPackage {
  pname = "ros-kinetic-kobuki-node";
  version = "0.7.6";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/kobuki-release/archive/release/kinetic/kobuki_node/0.7.6-0.tar.gz;
    sha256 = "0d7add3be65bb923b7f0d3116a2ba9233514c5c4e7109ebbdd7f5736e76a72f6";
  };

  buildInputs = [ ecl-sigslots ecl-streams kobuki-driver kobuki-msgs ecl-threads ecl-exceptions nav-msgs rospy std-msgs diagnostic-msgs roscpp nodelet tf geometry-msgs kobuki-ftdi pluginlib kobuki-keyop sensor-msgs kobuki-safety-controller diagnostic-updater angles ];
  propagatedBuildInputs = [ ecl-sigslots ecl-streams kobuki-driver kobuki-msgs ecl-threads ecl-exceptions nav-msgs rospy std-msgs diagnostic-msgs diagnostic-aggregator roscpp nodelet tf geometry-msgs capabilities kobuki-ftdi kobuki-rapps kobuki-keyop pluginlib sensor-msgs kobuki-safety-controller diagnostic-updater angles ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS nodelet for Kobuki: ROS wrapper for the Kobuki driver.'';
    #license = lib.licenses.BSD;
  };
}
