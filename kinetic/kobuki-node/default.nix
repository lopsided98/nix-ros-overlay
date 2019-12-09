
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, pluginlib, tf, nodelet, nav-msgs, sensor-msgs, diagnostic-msgs, capabilities, ecl-threads, diagnostic-aggregator, std-msgs, ecl-sigslots, catkin, kobuki-ftdi, ecl-exceptions, roscpp, angles, rospy, ecl-streams, kobuki-safety-controller, kobuki-driver, kobuki-keyop, diagnostic-updater, kobuki-msgs, kobuki-rapps }:
buildRosPackage {
  pname = "ros-kinetic-kobuki-node";
  version = "0.7.6";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/kobuki-release/archive/release/kinetic/kobuki_node/0.7.6-0.tar.gz";
    name = "0.7.6-0.tar.gz";
    sha256 = "0d7add3be65bb923b7f0d3116a2ba9233514c5c4e7109ebbdd7f5736e76a72f6";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs pluginlib tf nodelet nav-msgs sensor-msgs diagnostic-msgs ecl-threads std-msgs ecl-sigslots kobuki-ftdi ecl-exceptions roscpp angles rospy ecl-streams kobuki-safety-controller kobuki-driver kobuki-keyop diagnostic-updater kobuki-msgs ];
  propagatedBuildInputs = [ geometry-msgs pluginlib tf nodelet nav-msgs sensor-msgs diagnostic-msgs capabilities ecl-threads diagnostic-aggregator std-msgs ecl-sigslots kobuki-ftdi ecl-exceptions roscpp angles rospy ecl-streams kobuki-safety-controller kobuki-driver kobuki-keyop diagnostic-updater kobuki-msgs kobuki-rapps ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS nodelet for Kobuki: ROS wrapper for the Kobuki driver.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
