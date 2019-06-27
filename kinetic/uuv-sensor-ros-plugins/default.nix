
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xacro, tf, image-transport, sensor-msgs, catkin, uuv-sensor-ros-plugins-msgs, message-filters, tf2-ros, gazebo-plugins, gazebo-dev, tf2, laser-geometry, rostest, uuv-gazebo-plugins, std-msgs, roscpp, rosunit, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-uuv-sensor-ros-plugins";
  version = "0.6.12";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/kinetic/uuv_sensor_ros_plugins/0.6.12-0.tar.gz;
    sha256 = "5342931c9b7e69f3cee4703c8b5e899561fcbf0687d068568e0fb5f1df2bd795";
  };

  buildInputs = [ image-transport sensor-msgs uuv-sensor-ros-plugins-msgs message-filters roscpp gazebo-dev gazebo-plugins tf2 laser-geometry tf2-ros uuv-gazebo-plugins std-msgs tf geometry-msgs ];
  checkInputs = [ rostest rosunit xacro ];
  propagatedBuildInputs = [ image-transport sensor-msgs uuv-sensor-ros-plugins-msgs message-filters roscpp gazebo-dev gazebo-plugins tf2 laser-geometry tf2-ros uuv-gazebo-plugins std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uuv_sensor_ros_plugins package'';
    license = with lib.licenses; [ asl20 ];
  };
}
