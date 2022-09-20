
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-uuv-world-ros-plugins-msgs";
  version = "0.6.13";

  src = fetchurl {
    url = "https://github.com/uuvsimulator/uuv_simulator-release/archive/release/melodic/uuv_world_ros_plugins_msgs/0.6.13-0.tar.gz";
    name = "0.6.13-0.tar.gz";
    sha256 = "ba13fec3c313d07c75b858d904461d4edbec745a2f8ceed0d3e7142c6edd8184";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The uuv_world_ros_plugins_msgs package'';
    license = with lib.licenses; [ asl20 ];
  };
}
