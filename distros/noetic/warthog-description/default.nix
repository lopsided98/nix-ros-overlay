
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cpr-onav-description, robot-state-publisher, roslaunch, urdf, xacro }:
buildRosPackage {
  pname = "ros-noetic-warthog-description";
  version = "0.1.7-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/warthog-release/archive/release/noetic/warthog_description/0.1.7-1.tar.gz";
    name = "0.1.7-1.tar.gz";
    sha256 = "60b0703711572b756d04f57b0b729759b66c23d531c13c0bc9130e71b9711bd2";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch ];
  propagatedBuildInputs = [ cpr-onav-description robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF robot description for Warthog'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
