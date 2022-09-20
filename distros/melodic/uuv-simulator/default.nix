
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, uuv-assistants, uuv-auv-control-allocator, uuv-control-cascaded-pid, uuv-control-msgs, uuv-control-utils, uuv-descriptions, uuv-gazebo, uuv-gazebo-plugins, uuv-gazebo-ros-plugins, uuv-gazebo-ros-plugins-msgs, uuv-gazebo-worlds, uuv-sensor-ros-plugins, uuv-sensor-ros-plugins-msgs, uuv-teleop, uuv-thruster-manager, uuv-trajectory-control, uuv-world-plugins, uuv-world-ros-plugins, uuv-world-ros-plugins-msgs }:
buildRosPackage {
  pname = "ros-melodic-uuv-simulator";
  version = "0.6.13";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/uuv_simulator-release/archive/release/melodic/uuv_simulator/0.6.13-0.tar.gz";
    name = "0.6.13-0.tar.gz";
    sha256 = "9dd981efd3c5ceb4f4d7d731f41fdc26eb321a02bf3ab8b8e40b866e5c56e457";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ uuv-assistants uuv-auv-control-allocator uuv-control-cascaded-pid uuv-control-msgs uuv-control-utils uuv-descriptions uuv-gazebo uuv-gazebo-plugins uuv-gazebo-ros-plugins uuv-gazebo-ros-plugins-msgs uuv-gazebo-worlds uuv-sensor-ros-plugins uuv-sensor-ros-plugins-msgs uuv-teleop uuv-thruster-manager uuv-trajectory-control uuv-world-plugins uuv-world-ros-plugins uuv-world-ros-plugins-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''uuv_simulator contains Gazebo plugins and ROS packages for modeling and simulating unmanned underwater vehicles'';
    license = with lib.licenses; [ asl20 ];
  };
}
