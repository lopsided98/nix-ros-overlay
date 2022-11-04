
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-toposens-msgs";
  version = "2.3.2-r2";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/-/archive/release/noetic/toposens_msgs/2.3.2-2/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "37cca9c7f4159ef1be134ec018f7b3e0dec6b64b7704c0cb463330f6369746bb";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs message-generation message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS message definitions for TS sensors.'';
    license = with lib.licenses; [ bsd3 ];
  };
}
