
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-toposens-msgs";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/repository/archive.tar.gz?ref=release/kinetic/toposens_msgs/1.2.3-1";
    name = "archive.tar.gz";
    sha256 = "d0afe75d138bfbd2e20d0e398ec850730aacf56fc854a321e6aebc06aa87c807";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs message-generation message-runtime geometry-msgs ];
  propagatedBuildInputs = [ std-msgs message-generation message-runtime geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ROS message definitions for TS sensors.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
