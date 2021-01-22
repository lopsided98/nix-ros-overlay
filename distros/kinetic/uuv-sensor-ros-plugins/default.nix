
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-dev, gazebo-plugins, geometry-msgs, image-transport, laser-geometry, message-filters, roscpp, rostest, rosunit, sensor-msgs, std-msgs, tf, tf2, tf2-ros, uuv-gazebo-plugins, uuv-sensor-ros-plugins-msgs, xacro }:
buildRosPackage {
  pname = "ros-kinetic-uuv-sensor-ros-plugins";
  version = "0.6.13";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/uuv_simulator-release/archive/release/kinetic/uuv_sensor_ros_plugins/0.6.13-0.tar.gz";
    name = "0.6.13-0.tar.gz";
    sha256 = "12fcb6f31b21457041669c310aeb86debab037e06785bac517651eed31cfc81c";
  };

  buildType = "catkin";
  checkInputs = [ rostest rosunit xacro ];
  propagatedBuildInputs = [ gazebo-dev gazebo-plugins geometry-msgs image-transport laser-geometry message-filters roscpp sensor-msgs std-msgs tf tf2 tf2-ros uuv-gazebo-plugins uuv-sensor-ros-plugins-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uuv_sensor_ros_plugins package'';
    license = with lib.licenses; [ asl20 ];
  };
}
