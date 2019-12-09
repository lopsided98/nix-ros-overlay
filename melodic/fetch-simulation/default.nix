
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, fetch-gazebo-demo, catkin, fetchit-challenge, fetch-gazebo }:
buildRosPackage {
  pname = "ros-melodic-fetch-simulation";
  version = "0.9.2-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_gazebo-release/archive/release/melodic/fetch_simulation/0.9.2-1.tar.gz";
    name = "0.9.2-1.tar.gz";
    sha256 = "76b37846fcf07da29ab58753137ef1f324d53e8f6ca225fe46310e6673c7d801";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ fetch-gazebo-demo fetchit-challenge fetch-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Fetch Simulation, packages for working with Fetch and Freight in Gazebo'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
