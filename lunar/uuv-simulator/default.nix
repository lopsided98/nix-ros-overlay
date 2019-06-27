
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, uuv-world-ros-plugins-msgs, uuv-descriptions, uuv-teleop, uuv-thruster-manager, uuv-gazebo, uuv-control-cascaded-pid, uuv-world-plugins, uuv-sensor-ros-plugins, uuv-trajectory-control, uuv-gazebo-ros-plugins-msgs, uuv-gazebo-plugins, uuv-gazebo-worlds, uuv-control-msgs, uuv-assistants, catkin, uuv-auv-control-allocator, uuv-gazebo-ros-plugins, uuv-world-ros-plugins, uuv-sensor-ros-plugins-msgs, uuv-control-utils }:
buildRosPackage {
  pname = "ros-lunar-uuv-simulator";
  version = "0.6.12";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/lunar/uuv_simulator/0.6.12-0.tar.gz;
    sha256 = "795d857a16103b988847c70c15a37f06c1edd7d3a84eaeb0125ebc077aa3dba8";
  };

  propagatedBuildInputs = [ uuv-world-ros-plugins-msgs uuv-descriptions uuv-teleop uuv-thruster-manager uuv-gazebo uuv-control-cascaded-pid uuv-world-plugins uuv-sensor-ros-plugins uuv-trajectory-control uuv-gazebo-ros-plugins-msgs uuv-gazebo-plugins uuv-gazebo-worlds uuv-control-msgs uuv-assistants uuv-auv-control-allocator uuv-gazebo-ros-plugins uuv-world-ros-plugins uuv-sensor-ros-plugins-msgs uuv-control-utils ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''uuv_simulator contains Gazebo plugins and ROS packages for modeling and simulating unmanned underwater vehicles'';
    license = with lib.licenses; [ asl20 ];
  };
}
