
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, uuv-world-plugins, uuv-world-ros-plugins-msgs, catkin, gazebo-msgs, gazebo-dev, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-uuv-world-ros-plugins";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/melodic/uuv_world_ros_plugins/0.6.10-0.tar.gz;
    sha256 = "0bb8f7fb759854a6cbea931882f28f926a74eded1d59addbb24ffa388ca95ef5";
  };

  propagatedBuildInputs = [ uuv-world-plugins geometry-msgs uuv-world-ros-plugins-msgs roscpp gazebo-msgs gazebo-dev ];
  nativeBuildInputs = [ uuv-world-plugins geometry-msgs uuv-world-ros-plugins-msgs catkin roscpp gazebo-msgs gazebo-dev ];

  meta = {
    description = ''The uuv_world_ros_plugins package'';
    #license = lib.licenses.Apache-2.0;
  };
}
