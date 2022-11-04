
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-dev, gazebo-plugins, geometry-msgs, image-transport, laser-geometry, message-filters, roscpp, rostest, rosunit, sensor-msgs, std-msgs, tf, tf2, tf2-ros, uuv-gazebo-plugins, uuv-sensor-ros-plugins-msgs, xacro }:
buildRosPackage {
  pname = "ros-melodic-uuv-sensor-ros-plugins";
  version = "0.6.13";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/uuv_simulator-release/archive/release/melodic/uuv_sensor_ros_plugins/0.6.13-0.tar.gz";
    name = "0.6.13-0.tar.gz";
    sha256 = "403319ab9a425f0ace52c7ca845a359b67d5a0ea1fb8737a172608d9f41e4eb0";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest rosunit xacro ];
  propagatedBuildInputs = [ gazebo-dev gazebo-plugins geometry-msgs image-transport laser-geometry message-filters roscpp sensor-msgs std-msgs tf tf2 tf2-ros uuv-gazebo-plugins uuv-sensor-ros-plugins-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uuv_sensor_ros_plugins package'';
    license = with lib.licenses; [ asl20 ];
  };
}
