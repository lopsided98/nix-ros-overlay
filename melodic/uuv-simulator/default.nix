
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, uuv-world-ros-plugins-msgs, uuv-descriptions, uuv-teleop, uuv-thruster-manager, uuv-gazebo, uuv-control-cascaded-pid, uuv-world-plugins, uuv-sensor-ros-plugins, uuv-trajectory-control, uuv-gazebo-ros-plugins-msgs, uuv-gazebo-plugins, uuv-gazebo-worlds, uuv-control-msgs, uuv-assistants, catkin, uuv-auv-control-allocator, uuv-gazebo-ros-plugins, uuv-world-ros-plugins, uuv-sensor-ros-plugins-msgs, uuv-control-utils }:
buildRosPackage {
  pname = "ros-melodic-uuv-simulator";
  version = "0.6.13";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/melodic/uuv_simulator/0.6.13-0.tar.gz;
    sha256 = "9dd981efd3c5ceb4f4d7d731f41fdc26eb321a02bf3ab8b8e40b866e5c56e457";
  };

  propagatedBuildInputs = [ uuv-world-ros-plugins-msgs uuv-descriptions uuv-teleop uuv-thruster-manager uuv-gazebo uuv-control-cascaded-pid uuv-world-plugins uuv-sensor-ros-plugins uuv-trajectory-control uuv-gazebo-ros-plugins-msgs uuv-gazebo-plugins uuv-gazebo-worlds uuv-control-msgs uuv-assistants uuv-auv-control-allocator uuv-gazebo-ros-plugins uuv-world-ros-plugins uuv-sensor-ros-plugins-msgs uuv-control-utils ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''uuv_simulator contains Gazebo plugins and ROS packages for modeling and simulating unmanned underwater vehicles'';
    license = with lib.licenses; [ asl20 ];
  };
}
