
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, fetch-gazebo, catkin, fetch-gazebo-demo, fetchit-challenge }:
buildRosPackage {
  pname = "ros-melodic-fetch-simulation";
  version = "0.9.0";

  src = fetchurl {
    url = https://github.com/fetchrobotics-gbp/fetch_gazebo-release/archive/release/melodic/fetch_simulation/0.9.0-0.tar.gz;
    sha256 = "7f34ef887e5c1da619c37d637dc5e9bfb5b5a6e74646f5735e4192106407eab9";
  };

  propagatedBuildInputs = [ fetch-gazebo fetch-gazebo-demo fetchit-challenge ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Fetch Simulation, packages for working with Fetch and Freight in Gazebo'';
    #license = lib.licenses.BSD;
  };
}
