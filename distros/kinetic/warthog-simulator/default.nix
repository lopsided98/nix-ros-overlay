
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, warthog-gazebo }:
buildRosPackage {
  pname = "ros-kinetic-warthog-simulator";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/warthog_simulator-release/archive/release/kinetic/warthog_simulator/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "8417f04efcb0447c986b87a998845164d0bbdf43a56dd327d01e31c8deac8af7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ warthog-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Packages for simulating Warthog'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
