
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, fetch-gazebo, catkin, fetch-gazebo-demo, fetchit-challenge }:
buildRosPackage {
  pname = "ros-melodic-fetch-simulation";
  version = "0.9.1";

  src = fetchurl {
    url = https://github.com/fetchrobotics-gbp/fetch_gazebo-release/archive/release/melodic/fetch_simulation/0.9.1-0.tar.gz;
    sha256 = "a032a7e561c95e807a9a87dd91b7f0fbe9263a0afbd14457813f1850f6c2717e";
  };

  propagatedBuildInputs = [ fetch-gazebo fetch-gazebo-demo fetchit-challenge ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Fetch Simulation, packages for working with Fetch and Freight in Gazebo'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
