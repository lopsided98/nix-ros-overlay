
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, libmavconn, rosconsole-bridge, rospy, diagnostic-msgs, geometry-msgs, boost, message-runtime, angles, eigen-conversions, mavros-msgs, mavlink, std-srvs, gtest, catkin, tf2-ros, nav-msgs, std-msgs, roscpp, cmake-modules, pluginlib, sensor-msgs, geographic-msgs, diagnostic-updater, tf2-eigen, eigen, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-mavros";
  version = "0.29.2";

  src = fetchurl {
    url = https://github.com/mavlink/mavros-release/archive/release/kinetic/mavros/0.29.2-0.tar.gz;
    sha256 = "6616cf15637fbd542e9d4e03d324408b33f6d80ca33c10a1066a2b84c04f10c6";
  };

  buildInputs = [ libmavconn rosconsole-bridge diagnostic-msgs geometry-msgs boost angles eigen-conversions mavros-msgs mavlink std-srvs tf2-ros nav-msgs std-msgs roscpp cmake-modules pluginlib sensor-msgs geographic-msgs diagnostic-updater tf2-eigen eigen ];
  checkInputs = [ gtest rosunit ];
  propagatedBuildInputs = [ libmavconn rosconsole-bridge rospy diagnostic-msgs geometry-msgs boost message-runtime eigen-conversions mavros-msgs mavlink std-srvs tf2-ros nav-msgs std-msgs roscpp pluginlib sensor-msgs geographic-msgs diagnostic-updater tf2-eigen eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''MAVROS -- MAVLink extendable communication node for ROS
    with proxy for Ground Control Station.'';
    license = with lib.licenses; [ gpl3 lgpl2 bsdOriginal ];
  };
}
