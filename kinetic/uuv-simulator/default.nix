
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, uuv-teleop, uuv-sensor-ros-plugins, uuv-control-cascaded-pid, uuv-control-msgs, uuv-trajectory-control, uuv-gazebo, uuv-gazebo-plugins, uuv-world-ros-plugins-msgs, uuv-descriptions, uuv-assistants, catkin, uuv-world-ros-plugins, uuv-world-plugins, uuv-gazebo-ros-plugins-msgs, uuv-gazebo-ros-plugins, uuv-gazebo-worlds, uuv-thruster-manager, uuv-control-utils, uuv-auv-control-allocator, uuv-sensor-ros-plugins-msgs }:
buildRosPackage {
  pname = "ros-kinetic-uuv-simulator";
  version = "0.6.13";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/uuv_simulator-release/archive/release/kinetic/uuv_simulator/0.6.13-0.tar.gz";
    name = "0.6.13-0.tar.gz";
    sha256 = "d1e346fc867a8ed8538da9ef3460f8afccc9f1320871bece21f8d126b671d551";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ uuv-teleop uuv-sensor-ros-plugins uuv-control-cascaded-pid uuv-control-msgs uuv-trajectory-control uuv-gazebo uuv-gazebo-plugins uuv-world-ros-plugins-msgs uuv-descriptions uuv-assistants uuv-world-ros-plugins uuv-world-plugins uuv-gazebo-ros-plugins-msgs uuv-gazebo-ros-plugins uuv-gazebo-worlds uuv-thruster-manager uuv-control-utils uuv-auv-control-allocator uuv-sensor-ros-plugins-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''uuv_simulator contains Gazebo plugins and ROS packages for modeling and simulating unmanned underwater vehicles'';
    license = with lib.licenses; [ asl20 ];
  };
}
