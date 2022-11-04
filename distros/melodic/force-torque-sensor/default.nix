
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, dynamic-reconfigure, geometry-msgs, hardware-interface, iirob-filters, message-runtime, pluginlib, realtime-tools, roscpp, rosparam-handler, rospy, std-msgs, std-srvs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-force-torque-sensor";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/KITrobotics/force_torque_sensor-release/archive/release/melodic/force_torque_sensor/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "187d9649a0604ed6f13a57c41bd0893c659ac73908c925c4a8eba7ef50837770";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cmake-modules dynamic-reconfigure geometry-msgs hardware-interface iirob-filters message-runtime pluginlib realtime-tools roscpp rosparam-handler rospy std-msgs std-srvs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The force_torque_sensor package'';
    license = with lib.licenses; [ lgpl3Only ];
  };
}
