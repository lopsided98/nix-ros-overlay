
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-uuv-gazebo-ros-plugins-msgs";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/kinetic/uuv_gazebo_ros_plugins_msgs/0.6.10-0.tar.gz;
    sha256 = "ac648e60fb3230a1f9741c1889acb2dcd7207261ee6e6aac434ee6eda340b004";
  };

  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ std-msgs catkin message-generation geometry-msgs ];

  meta = {
    description = ''The uuv_gazebo_ros_plugins_msgs package'';
    #license = lib.licenses.Apache-2.0;
  };
}
