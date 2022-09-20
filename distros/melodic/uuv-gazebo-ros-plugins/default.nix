
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-dev, geometry-msgs, roscpp, rostest, rosunit, sensor-msgs, std-msgs, tf2, tf2-ros, uuv-gazebo-plugins, uuv-gazebo-ros-plugins-msgs, visualization-msgs, xacro }:
buildRosPackage {
  pname = "ros-melodic-uuv-gazebo-ros-plugins";
  version = "0.6.13";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/uuv_simulator-release/archive/release/melodic/uuv_gazebo_ros_plugins/0.6.13-0.tar.gz";
    name = "0.6.13-0.tar.gz";
    sha256 = "061cc787ee014cb7729eed0a28bdbb52967c821a3fb8bd7ead255b38909a2a3e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rostest rosunit xacro ];
  propagatedBuildInputs = [ gazebo-dev geometry-msgs roscpp sensor-msgs std-msgs tf2 tf2-ros uuv-gazebo-plugins uuv-gazebo-ros-plugins-msgs visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''UUV Simulator's extended ROS plugins for generation of the necessary
      ROS services and topics during the simulation.'';
    license = with lib.licenses; [ asl20 ];
  };
}
