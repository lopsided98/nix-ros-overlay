
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, boost, catkin, cmake-modules, diagnostic-msgs, diagnostic-updater, eigen, eigen-conversions, geographic-msgs, geographiclib, geometry-msgs, gtest, libmavconn, mavlink, mavros-msgs, message-runtime, nav-msgs, pluginlib, rosconsole-bridge, roscpp, rospy, rosunit, sensor-msgs, std-msgs, std-srvs, tf2-eigen, tf2-ros, trajectory-msgs }:
buildRosPackage {
  pname = "ros-noetic-mavros";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavros-release/archive/release/noetic/mavros/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "3250eaf643c73dca60c16778be5634e09b474b28b40e47172dd241f059a6bdd7";
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
