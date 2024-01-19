
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-people-msgs";
  version = "1.4.2-r1";

  src = fetchurl {
    url = "https://github.com/OSUrobotics/people-release/archive/release/noetic/people_msgs/1.4.2-1.tar.gz";
    name = "1.4.2-1.tar.gz";
    sha256 = "f043041d0eaa197f4f6a5774ce9439c20758f7b2bed809439f772faf1a29930c";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages used by nodes in the people stack.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
