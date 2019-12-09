
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-ros, sensor-msgs, xacro, message-filters, geometry-msgs, uuv-gazebo-plugins, std-msgs, tf, catkin, tf2, rosunit, image-transport, laser-geometry, gazebo-plugins, roscpp, rostest, uuv-sensor-ros-plugins-msgs, gazebo-dev }:
buildRosPackage {
  pname = "ros-kinetic-uuv-sensor-ros-plugins";
  version = "0.6.13";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/uuv_simulator-release/archive/release/kinetic/uuv_sensor_ros_plugins/0.6.13-0.tar.gz";
    name = "0.6.13-0.tar.gz";
    sha256 = "12fcb6f31b21457041669c310aeb86debab037e06785bac517651eed31cfc81c";
  };

  buildType = "catkin";
  buildInputs = [ tf2-ros sensor-msgs message-filters geometry-msgs std-msgs tf laser-geometry roscpp image-transport gazebo-plugins gazebo-dev tf2 uuv-sensor-ros-plugins-msgs uuv-gazebo-plugins ];
  checkInputs = [ xacro rostest rosunit ];
  propagatedBuildInputs = [ tf2-ros sensor-msgs message-filters geometry-msgs uuv-gazebo-plugins std-msgs tf laser-geometry roscpp image-transport gazebo-plugins tf2 uuv-sensor-ros-plugins-msgs gazebo-dev ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uuv_sensor_ros_plugins package'';
    license = with lib.licenses; [ asl20 ];
  };
}
