
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, uuv-world-plugins, geometry-msgs, uuv-world-ros-plugins-msgs, catkin, gazebo-dev, roscpp, gazebo-msgs }:
buildRosPackage {
  pname = "ros-kinetic-uuv-world-ros-plugins";
  version = "0.6.13";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/uuv_simulator-release/archive/release/kinetic/uuv_world_ros_plugins/0.6.13-0.tar.gz";
    name = "0.6.13-0.tar.gz";
    sha256 = "43198c4bb0bfd858177937a585b1b55ad2fc06cbf1cada3294053aafc379c78f";
  };

  buildType = "catkin";
  buildInputs = [ uuv-world-plugins geometry-msgs uuv-world-ros-plugins-msgs gazebo-dev roscpp gazebo-msgs ];
  propagatedBuildInputs = [ uuv-world-plugins geometry-msgs uuv-world-ros-plugins-msgs gazebo-dev roscpp gazebo-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uuv_world_ros_plugins package'';
    license = with lib.licenses; [ asl20 ];
  };
}
