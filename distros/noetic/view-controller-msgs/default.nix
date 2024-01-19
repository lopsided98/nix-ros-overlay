
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, genmsg, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-view-controller-msgs";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/view_controller_msgs-release/archive/release/noetic/view_controller_msgs/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "2157172387b8868d01b73a0cf00fb1425748b9707b54b40f97eb1ef40505aadf";
  };

  buildType = "catkin";
  buildInputs = [ catkin genmsg message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for (camera) view controllers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
