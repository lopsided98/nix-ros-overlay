
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-cartographer-ros-msgs";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/cartographer_ros-release/archive/release/melodic/cartographer_ros_msgs/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "f4572cb110370abc6059493e41532e143142c3ee974c6737c6a42aa7811d11d4";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS messages for the cartographer_ros package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
