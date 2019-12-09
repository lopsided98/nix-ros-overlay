
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, dynamic-reconfigure, message-runtime, hardware-interface, pluginlib, std-srvs, rosparam-handler, std-msgs, catkin, tf2, cmake-modules, tf2-geometry-msgs, realtime-tools, iirob-filters, roscpp, rospy, tf2-ros }:
buildRosPackage {
  pname = "ros-kinetic-force-torque-sensor";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/KITrobotics/force_torque_sensor-release/archive/release/kinetic/force_torque_sensor/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "331470d3472ac076145b872aa59ba793f70dcd8285357277ac5fc92aadde4fe9";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs dynamic-reconfigure hardware-interface pluginlib std-msgs rosparam-handler std-srvs cmake-modules roscpp tf2-geometry-msgs realtime-tools iirob-filters tf2 rospy tf2-ros ];
  propagatedBuildInputs = [ geometry-msgs dynamic-reconfigure message-runtime hardware-interface pluginlib std-srvs rosparam-handler std-msgs cmake-modules roscpp tf2-geometry-msgs realtime-tools iirob-filters tf2 rospy tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The force_torque_sensor package'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
