
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, nav-msgs }:
buildRosPackage {
  pname = "ros-melodic-map-organizer-msgs";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation_msgs-release/archive/release/melodic/map_organizer_msgs/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "5b1c9308d03d5c7eb1e0e7dcc9d6c9db253a36d2da8493fe01e6df74f27ec452";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ message-runtime nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message definitions for map_organizer_msgs package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
