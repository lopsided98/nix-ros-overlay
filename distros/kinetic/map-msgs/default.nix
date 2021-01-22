
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, nav-msgs, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-map-msgs";
  version = "1.14.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_msgs-release/archive/release/kinetic/map_msgs/1.14.1-1.tar.gz";
    name = "1.14.1-1.tar.gz";
    sha256 = "1c72c777862d13074551becfefdbfb3a7dfcc01f49d548693652fe25e139ec9a";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime nav-msgs sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package defines messages commonly used in mapping packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
