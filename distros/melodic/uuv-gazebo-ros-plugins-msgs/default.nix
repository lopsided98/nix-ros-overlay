
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-uuv-gazebo-ros-plugins-msgs";
  version = "0.6.13";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/uuv_simulator-release/archive/release/melodic/uuv_gazebo_ros_plugins_msgs/0.6.13-0.tar.gz";
    name = "0.6.13-0.tar.gz";
    sha256 = "b48e850ae31997516e36049b592f26939a20a278600d8b3f8168b8048a3b6a83";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uuv_gazebo_ros_plugins_msgs package'';
    license = with lib.licenses; [ asl20 ];
  };
}
