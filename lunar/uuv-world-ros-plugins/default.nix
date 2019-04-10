
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, uuv-world-plugins, uuv-world-ros-plugins-msgs, catkin, gazebo-msgs, gazebo-dev, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-uuv-world-ros-plugins";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/lunar/uuv_world_ros_plugins/0.6.10-0.tar.gz;
    sha256 = "4fe4c4ccba2444944b05941c985b5461e707e47583ac8930e0abc1be93c83a1e";
  };

  buildInputs = [ uuv-world-plugins geometry-msgs uuv-world-ros-plugins-msgs roscpp gazebo-msgs gazebo-dev ];
  propagatedBuildInputs = [ uuv-world-plugins geometry-msgs uuv-world-ros-plugins-msgs roscpp gazebo-msgs gazebo-dev ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uuv_world_ros_plugins package'';
    #license = lib.licenses.Apache-2.0;
  };
}
