
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, dynamic-reconfigure, rospy, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-leo-example-object-detection";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_examples-release/archive/release/noetic/leo_example_object_detection/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "2f4ee0324414397600d37ae209348b50c574fa2a812152400ef08bb4d02a2742";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge dynamic-reconfigure rospy sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An object Detection Example for Leo Rover.'';
    license = with lib.licenses; [ mit ];
  };
}
