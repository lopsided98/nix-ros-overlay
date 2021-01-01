
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, dynamic-reconfigure, geometry-msgs, hardware-interface, iirob-filters, message-runtime, pluginlib, realtime-tools, roscpp, rosparam-handler, rospy, std-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-kinetic-force-torque-sensor";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/KITrobotics/force_torque_sensor-release/archive/release/kinetic/force_torque_sensor/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "50964e5776f7f3abfb04ec47afd6a4c3dc33cb9a68662e44bbed8614ea963de8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cmake-modules dynamic-reconfigure geometry-msgs hardware-interface iirob-filters message-runtime pluginlib realtime-tools roscpp rosparam-handler rospy std-msgs std-srvs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The force_torque_sensor package'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
