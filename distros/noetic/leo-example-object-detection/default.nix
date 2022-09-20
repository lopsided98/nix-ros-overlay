
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, dynamic-reconfigure, rospy, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-leo-example-object-detection";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_examples-release/archive/release/noetic/leo_example_object_detection/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "4bb5f696f991125cc1587710676ae0b06beed74bc8271926cd0fabeeeb87c578";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge dynamic-reconfigure rospy sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Object Detection Example for Leo Rover.'';
    license = with lib.licenses; [ mit ];
  };
}
