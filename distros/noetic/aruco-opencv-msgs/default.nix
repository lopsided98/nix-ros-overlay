
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-aruco-opencv-msgs";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/aruco_opencv-release/archive/release/noetic/aruco_opencv_msgs/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "6e6dc561d9a04cdbf2604bb24166cedcb54025326b411d1cb49be195537889cb";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Message definitions for aruco_opencv package.";
    license = with lib.licenses; [ mit ];
  };
}
