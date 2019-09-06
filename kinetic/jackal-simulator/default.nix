
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, jackal-gazebo }:
buildRosPackage {
  pname = "ros-kinetic-jackal-simulator";
  version = "0.3.0";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal_simulator-release/archive/release/kinetic/jackal_simulator/0.3.0-0.tar.gz";
    name = "0.3.0-0.tar.gz";
    sha256 = "893a52a4ff2590198f0010f0440c33cb9a861e9b06e875c66f0587c9e981dd1c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ jackal-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Packages for simulating Jackal.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
