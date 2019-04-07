
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-cartographer-ros-msgs";
  version = "1.0.0-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/cartographer_ros-release/archive/release/melodic/cartographer_ros_msgs/1.0.0-1.tar.gz;
    sha256 = "f4572cb110370abc6059493e41532e143142c3ee974c6737c6a42aa7811d11d4";
  };

  buildInputs = [ std-msgs message-generation geometry-msgs ];
  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS messages for the cartographer_ros package.'';
    #license = lib.licenses.Apache 2.0;
  };
}
