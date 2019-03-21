
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xacro, sensor-msgs, catkin, uuv-sensor-ros-plugins-msgs, message-filters, tf2-ros, gazebo-dev, gazebo-plugins, roscpp, rostest, tf2, uuv-gazebo-plugins, std-msgs, tf, rosunit, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-uuv-sensor-ros-plugins";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/kinetic/uuv_sensor_ros_plugins/0.6.10-0.tar.gz;
    sha256 = "68de1546bdc9a3c673e2bec03fdfc482dca577e503d45595f4306d93006357aa";
  };

  checkInputs = [ rostest rosunit xacro ];
  propagatedBuildInputs = [ sensor-msgs uuv-sensor-ros-plugins-msgs message-filters roscpp gazebo-plugins gazebo-dev tf2 tf2-ros uuv-gazebo-plugins std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ sensor-msgs uuv-sensor-ros-plugins-msgs message-filters catkin roscpp gazebo-plugins gazebo-dev tf2 tf2-ros uuv-gazebo-plugins std-msgs tf geometry-msgs ];

  meta = {
    description = ''The uuv_sensor_ros_plugins package'';
    #license = lib.licenses.Apache-2.0;
  };
}
