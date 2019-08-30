
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-uuv-gazebo-ros-plugins-msgs";
  version = "0.6.13";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/kinetic/uuv_gazebo_ros_plugins_msgs/0.6.13-0.tar.gz;
    sha256 = "e536acbb0defed2cd275d0d803138ce628063cd92dd4450bb0ba651d03e4977f";
  };

  buildInputs = [ std-msgs message-generation geometry-msgs ];
  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uuv_gazebo_ros_plugins_msgs package'';
    license = with lib.licenses; [ asl20 ];
  };
}
