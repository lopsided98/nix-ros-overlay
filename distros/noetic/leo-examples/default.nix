
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, leo-example-follow-ar-tag, leo-example-line-follower, leo-example-object-detection }:
buildRosPackage {
  pname = "ros-noetic-leo-examples";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_examples-release/archive/release/noetic/leo_examples/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "b1900c84ab421a366dc2f9b53753118a3b3c4d22ae4cef2ae34bc3e21d2d0d6b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ leo-example-follow-ar-tag leo-example-line-follower leo-example-object-detection ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A collection of ROS packages that show an example usage of functionalities on a stock Leo Rover.'';
    license = with lib.licenses; [ mit ];
  };
}
