
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-dev, gazebo-msgs, geometry-msgs, roscpp, uuv-world-plugins, uuv-world-ros-plugins-msgs }:
buildRosPackage {
  pname = "ros-kinetic-uuv-world-ros-plugins";
  version = "0.6.13";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/uuv_simulator-release/archive/release/kinetic/uuv_world_ros_plugins/0.6.13-0.tar.gz";
    name = "0.6.13-0.tar.gz";
    sha256 = "43198c4bb0bfd858177937a585b1b55ad2fc06cbf1cada3294053aafc379c78f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-dev gazebo-msgs geometry-msgs roscpp uuv-world-plugins uuv-world-ros-plugins-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uuv_world_ros_plugins package'';
    license = with lib.licenses; [ asl20 ];
  };
}
