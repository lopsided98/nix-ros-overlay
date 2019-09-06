
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, hardware-interface, iirob-filters, cmake-modules, tf2-geometry-msgs, pluginlib, realtime-tools, catkin, tf2-ros, roscpp, tf2, message-runtime, rospy, std-msgs, dynamic-reconfigure, rosparam-handler, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-force-torque-sensor";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/KITrobotics/force_torque_sensor-release/archive/release/kinetic/force_torque_sensor/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "331470d3472ac076145b872aa59ba793f70dcd8285357277ac5fc92aadde4fe9";
  };

  buildType = "catkin";
  buildInputs = [ hardware-interface std-srvs cmake-modules pluginlib tf2-geometry-msgs rosparam-handler realtime-tools tf2-ros rospy roscpp tf2 dynamic-reconfigure std-msgs iirob-filters geometry-msgs ];
  propagatedBuildInputs = [ hardware-interface iirob-filters std-srvs cmake-modules tf2-geometry-msgs pluginlib rosparam-handler realtime-tools tf2-ros tf2 std-msgs message-runtime dynamic-reconfigure rospy roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The force_torque_sensor package'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
