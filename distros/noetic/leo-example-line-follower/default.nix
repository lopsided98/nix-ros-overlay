
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, dynamic-reconfigure, geometry-msgs, rospy, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-leo-example-line-follower";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_examples-release/archive/release/noetic/leo_example_line_follower/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "c4c08fe56a46b18d205f2ce8e88ca50ee6a3a21913d4ae6cb2446789fd2647b7";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge dynamic-reconfigure geometry-msgs rospy sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Neural Network model for line track following Example for Leo Rover.'';
    license = with lib.licenses; [ mit ];
  };
}
