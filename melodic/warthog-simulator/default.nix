
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, warthog-gazebo }:
buildRosPackage {
  pname = "ros-melodic-warthog-simulator";
  version = "0.2.0-r1";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/warthog_simulator-release/archive/release/melodic/warthog_simulator/0.2.0-1.tar.gz;
    sha256 = "f69612ee91e13eee317ed9eb5595954cf3fef3b77ef55594f33e188c77850e70";
  };

  propagatedBuildInputs = [ warthog-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Packages for simulating Warthog'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
