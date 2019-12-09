
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, message-runtime, std-msgs, catkin, message-generation }:
buildRosPackage {
  pname = "ros-kinetic-toposens-msgs";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/kinetic/toposens_msgs/1.3.0-1";
    name = "archive.tar.gz";
    sha256 = "7c3393402e679f65c4b1b7a69e8858920b533383e2d3aace34b02806974c57a5";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs message-generation geometry-msgs message-runtime ];
  propagatedBuildInputs = [ std-msgs message-generation geometry-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS message definitions for TS sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
