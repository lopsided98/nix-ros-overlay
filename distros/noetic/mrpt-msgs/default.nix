
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, ros-environment, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-mrpt-msgs";
  version = "0.4.3-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_msgs-release/archive/release/noetic/mrpt_msgs/0.4.3-1.tar.gz";
    name = "0.4.3-1.tar.gz";
    sha256 = "4cdd9cc0e13d2ece96206ebd6cd3d21bb3e02925e87fbcb5d8b0ec623182667c";
  };

  buildType = "cmake";
  buildInputs = [ message-generation ros-environment ];
  propagatedBuildInputs = [ geometry-msgs message-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS messages for MRPT classes and objects'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
