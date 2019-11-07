
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslib, catkin }:
buildRosPackage {
  pname = "ros-melodic-roscreate";
  version = "1.14.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros-release/archive/release/melodic/roscreate/1.14.7-1.tar.gz";
    name = "1.14.7-1.tar.gz";
    sha256 = "784ad70a36afb22b533a74fec2158e5494c083ae4348aec48e5889435e71af5c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''roscreate contains a tool that assists in the creation of ROS filesystem resources.
     It provides: <tt>roscreate-pkg</tt>, which creates a new package directory,
     including the appropriate build and manifest files.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
