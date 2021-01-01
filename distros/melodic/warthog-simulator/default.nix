
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, warthog-gazebo }:
buildRosPackage {
  pname = "ros-melodic-warthog-simulator";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/warthog_simulator-release/archive/release/melodic/warthog_simulator/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "74906c172ae52e51327685dd41f026da754359b26db911a68c7ddfe9fe79f096";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ warthog-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Packages for simulating Warthog'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
