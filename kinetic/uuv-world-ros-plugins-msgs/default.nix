
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-uuv-world-ros-plugins-msgs";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/kinetic/uuv_world_ros_plugins_msgs/0.6.10-0.tar.gz;
    sha256 = "f247b4d54d695c26c06846f90bd494bb0859f0996ca9f80c218036bac7546bcd";
  };

  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ std-msgs catkin message-generation geometry-msgs ];

  meta = {
    description = ''The uuv_world_ros_plugins_msgs package'';
    #license = lib.licenses.Apache-2.0;
  };
}
