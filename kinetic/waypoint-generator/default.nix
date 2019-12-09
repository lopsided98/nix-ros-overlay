
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospy, geometry-msgs, catkin }:
buildRosPackage {
  pname = "ros-kinetic-waypoint-generator";
  version = "0.0.1";

  src = fetchurl {
    url = "https://github.com/jihoonl/waypoint-release/archive/release/kinetic/waypoint_generator/0.0.1-0.tar.gz";
    name = "0.0.1-0.tar.gz";
    sha256 = "a6910dbbe3a5b557a592dcae66e6c6b239b63e49d69117aff907c8429899d2a4";
  };

  buildType = "catkin";
  buildInputs = [ rospy geometry-msgs ];
  propagatedBuildInputs = [ rospy geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Generates waypoint yaml file'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
