
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, jackal-gazebo }:
buildRosPackage {
  pname = "ros-noetic-jackal-simulator";
  version = "0.4.0-r4";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal_simulator-release/archive/release/noetic/jackal_simulator/0.4.0-4.tar.gz";
    name = "0.4.0-4.tar.gz";
    sha256 = "5f4397585ff862204ec38dad61b1a68c87b71148441f43066b3c7ea4b2b8cf39";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ jackal-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Packages for simulating Jackal.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
