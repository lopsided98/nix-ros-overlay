
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, uuv-teleop, uuv-sensor-ros-plugins, uuv-control-cascaded-pid, uuv-control-msgs, uuv-trajectory-control, uuv-gazebo, uuv-gazebo-plugins, uuv-world-ros-plugins-msgs, uuv-descriptions, uuv-assistants, catkin, uuv-world-ros-plugins, uuv-world-plugins, uuv-gazebo-ros-plugins-msgs, uuv-gazebo-ros-plugins, uuv-gazebo-worlds, uuv-thruster-manager, uuv-control-utils, uuv-auv-control-allocator, uuv-sensor-ros-plugins-msgs }:
buildRosPackage {
  pname = "ros-melodic-uuv-simulator";
  version = "0.6.13";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/uuv_simulator-release/archive/release/melodic/uuv_simulator/0.6.13-0.tar.gz";
    name = "0.6.13-0.tar.gz";
    sha256 = "9dd981efd3c5ceb4f4d7d731f41fdc26eb321a02bf3ab8b8e40b866e5c56e457";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ uuv-teleop uuv-sensor-ros-plugins uuv-control-cascaded-pid uuv-control-msgs uuv-trajectory-control uuv-gazebo uuv-gazebo-plugins uuv-world-ros-plugins-msgs uuv-descriptions uuv-assistants uuv-world-ros-plugins uuv-world-plugins uuv-gazebo-ros-plugins-msgs uuv-gazebo-ros-plugins uuv-gazebo-worlds uuv-thruster-manager uuv-control-utils uuv-auv-control-allocator uuv-sensor-ros-plugins-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''uuv_simulator contains Gazebo plugins and ROS packages for modeling and simulating unmanned underwater vehicles'';
    license = with lib.licenses; [ asl20 ];
  };
}
