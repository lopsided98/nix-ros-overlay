
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ridgeback-gazebo, catkin }:
buildRosPackage {
  pname = "ros-kinetic-ridgeback-simulator";
  version = "0.0.3";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/ridgeback_simulator-release/archive/release/kinetic/ridgeback_simulator/0.0.3-0.tar.gz;
    sha256 = "268094d7630113ac3ecf5448a614664ba220c5b78ee049c2bdb0908d465f567e";
  };

  propagatedBuildInputs = [ ridgeback-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Packages for simulating Ridgeback.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
