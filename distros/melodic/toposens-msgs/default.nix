
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-toposens-msgs";
  version = "2.3.2-r1";

  src = fetchurl {
    url = "https://gitlab.com/toposens/public/toposens-release/-/archive/release/melodic/toposens_msgs/2.3.2-1/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "300a936f7ab85a553d989f4ca2941b5bc47e178484e0d3493971ca469ed97b43";
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
