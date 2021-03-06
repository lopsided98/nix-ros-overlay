
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-people-msgs";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/OSUrobotics/people-release/archive/release/noetic/people_msgs/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "23c5aadea89b2d9eb9f8f5bc712313ef205a9db3844d47f25bfe5e167525b840";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages used by nodes in the people stack.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
