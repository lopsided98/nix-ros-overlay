
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-people-msgs";
  version = "1.1.2-r1";

  src = fetchurl {
    url = https://github.com/OSUrobotics/people-release/archive/release/lunar/people_msgs/1.1.2-1.tar.gz;
    sha256 = "ba462f5c634f4d8769a56500003deffc8524b4a18aa8c3d2272fa2191e32aa71";
  };

  buildInputs = [ std-msgs message-generation geometry-msgs ];
  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages used by nodes in the people stack.'';
    #license = lib.licenses.BSD;
  };
}
