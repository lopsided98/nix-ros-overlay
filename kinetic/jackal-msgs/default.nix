
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-jackal-msgs";
  version = "0.6.1";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/jackal-release/archive/release/kinetic/jackal_msgs/0.6.1-0.tar.gz;
    sha256 = "92888cd04fe174debffc499b2e18ff39fb040e745321cc8f268e9834b3729ce2";
  };

  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ std-msgs catkin message-generation ];

  meta = {
    description = ''Messages exclusive to Jackal, especially for representing low-level motor commands and sensors.'';
    #license = lib.licenses.BSD;
  };
}
