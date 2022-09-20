
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, leo-example-follow-ar-tag, leo-example-line-follower, leo-example-object-detection }:
buildRosPackage {
  pname = "ros-noetic-leo-examples";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_examples-release/archive/release/noetic/leo_examples/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "47b98cd6a2369a9dab4023729d894bbb300608b9ad49dc2b7b8ee4d6a028a38d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ leo-example-follow-ar-tag leo-example-line-follower leo-example-object-detection ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A collection of ROS packages that show example usage of functionalities on stock Leo Rover.'';
    license = with lib.licenses; [ mit ];
  };
}
