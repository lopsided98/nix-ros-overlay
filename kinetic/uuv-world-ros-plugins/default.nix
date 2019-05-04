
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, uuv-world-plugins, geometry-msgs, uuv-world-ros-plugins-msgs, catkin, gazebo-dev, roscpp, gazebo-msgs }:
buildRosPackage {
  pname = "ros-kinetic-uuv-world-ros-plugins";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/kinetic/uuv_world_ros_plugins/0.6.10-0.tar.gz;
    sha256 = "4817cdac8abde3a0c786806dc8c9d9b8cbfc52d03c6c3e3ac66a74a9722770c4";
  };

  buildInputs = [ uuv-world-plugins geometry-msgs uuv-world-ros-plugins-msgs gazebo-dev roscpp gazebo-msgs ];
  propagatedBuildInputs = [ uuv-world-plugins geometry-msgs uuv-world-ros-plugins-msgs gazebo-dev roscpp gazebo-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uuv_world_ros_plugins package'';
    license = with lib.licenses; [ asl20 ];
  };
}
