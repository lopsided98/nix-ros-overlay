
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, dynamic-reconfigure, geometry-msgs, rospy, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-leo-example-line-follower";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_examples-release/archive/release/noetic/leo_example_line_follower/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "a7f28d6e6d9ae99c4e3a572de169874f79094fd275d6f92f647c4e684932e545";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge dynamic-reconfigure geometry-msgs rospy sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A neural Network model for line track following Example for Leo Rover.'';
    license = with lib.licenses; [ mit ];
  };
}
