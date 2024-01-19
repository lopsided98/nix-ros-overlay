
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, warthog-gazebo }:
buildRosPackage {
  pname = "ros-noetic-warthog-simulator";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/warthog_simulator-release/archive/release/noetic/warthog_simulator/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "3fde1ac9ee9f62b32da70e40a5afffa77382bb8b2471083f91e69ed9d1566189";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ warthog-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Packages for simulating Warthog'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
