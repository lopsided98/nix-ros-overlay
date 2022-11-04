
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cartographer-ros, catkin, map-server, move-base, roslaunch, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-jackal-cartographer-navigation";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/jackal_cartographer_navigation-release/archive/release/melodic/jackal_cartographer_navigation/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "42f4aeabb0b51ed36a729a239531196c52a9e1ab1a0c6ae5d75d71fe0a7158b7";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch ];
  propagatedBuildInputs = [ cartographer-ros map-server move-base urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files and code for autonomous navigation of the Jackal using Google Cartographer'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
