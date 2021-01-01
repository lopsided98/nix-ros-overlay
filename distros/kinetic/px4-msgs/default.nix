
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-px4-msgs";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/PX4/px4_msgs-release/archive/release/kinetic/px4_msgs/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "f48d8cbefa5a4035a4ce7c64f28ac53a58bd9e3823931411da526fa1215b251a";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package with the ROS-equivalent of PX4 uORB msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
