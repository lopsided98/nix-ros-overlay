
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, dynamic-reconfigure, geometry-msgs, hardware-interface, iirob-filters, message-runtime, pluginlib, realtime-tools, roscpp, rosparam-handler, rospy, std-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-kinetic-force-torque-sensor";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/KITrobotics/force_torque_sensor-release/archive/release/kinetic/force_torque_sensor/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "331470d3472ac076145b872aa59ba793f70dcd8285357277ac5fc92aadde4fe9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cmake-modules dynamic-reconfigure geometry-msgs hardware-interface iirob-filters message-runtime pluginlib realtime-tools roscpp rosparam-handler rospy std-msgs std-srvs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The force_torque_sensor package'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
