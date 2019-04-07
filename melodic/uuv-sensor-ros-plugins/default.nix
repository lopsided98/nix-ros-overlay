
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xacro, sensor-msgs, catkin, uuv-sensor-ros-plugins-msgs, message-filters, tf2-ros, gazebo-dev, gazebo-plugins, roscpp, tf2, rostest, uuv-gazebo-plugins, std-msgs, tf, rosunit, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-uuv-sensor-ros-plugins";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/melodic/uuv_sensor_ros_plugins/0.6.10-0.tar.gz;
    sha256 = "0d25b57ad18554d4a85c12a45612cd6a884f7e775fea8c90ed8d58ac2f0d0c36";
  };

  buildInputs = [ sensor-msgs uuv-sensor-ros-plugins-msgs message-filters roscpp gazebo-plugins gazebo-dev tf2 tf2-ros uuv-gazebo-plugins std-msgs tf geometry-msgs ];
  checkInputs = [ rostest rosunit xacro ];
  propagatedBuildInputs = [ sensor-msgs uuv-sensor-ros-plugins-msgs message-filters roscpp gazebo-plugins gazebo-dev tf2 tf2-ros uuv-gazebo-plugins std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uuv_sensor_ros_plugins package'';
    #license = lib.licenses.Apache-2.0;
  };
}
