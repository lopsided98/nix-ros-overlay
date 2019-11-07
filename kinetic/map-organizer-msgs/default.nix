
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, catkin, nav-msgs, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-map-organizer-msgs";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation_msgs-release/archive/release/kinetic/map_organizer_msgs/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "8237f8589f0335ff71171ffd75e445b0ff7ea38e9e84d372b110f741fa75409a";
  };

  buildType = "catkin";
  buildInputs = [ nav-msgs message-generation ];
  propagatedBuildInputs = [ nav-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message definitions for map_organizer_msgs package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
