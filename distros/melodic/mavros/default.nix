
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, boost, catkin, cmake-modules, diagnostic-msgs, diagnostic-updater, eigen, eigen-conversions, geographic-msgs, geographiclib, geometry-msgs, gtest, libmavconn, mavlink, mavros-msgs, message-runtime, nav-msgs, pluginlib, rosconsole-bridge, roscpp, rospy, rosunit, sensor-msgs, std-msgs, std-srvs, tf2-eigen, tf2-ros, trajectory-msgs }:
buildRosPackage {
  pname = "ros-melodic-mavros";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavros-release/archive/release/melodic/mavros/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "90a25733ef4812bac70d06a9ce45cf5fcd2b2d5d3a170420238073b63a66d1a0";
  };

  buildType = "catkin";
  buildInputs = [ angles cmake-modules ];
  checkInputs = [ gtest rosunit ];
  propagatedBuildInputs = [ boost diagnostic-msgs diagnostic-updater eigen eigen-conversions geographic-msgs geographiclib geometry-msgs libmavconn mavlink mavros-msgs message-runtime nav-msgs pluginlib rosconsole-bridge roscpp rospy sensor-msgs std-msgs std-srvs tf2-eigen tf2-ros trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''MAVROS -- MAVLink extendable communication node for ROS
    with proxy for Ground Control Station.'';
    license = with lib.licenses; [ gpl3 lgpl2 bsdOriginal ];
  };
}
