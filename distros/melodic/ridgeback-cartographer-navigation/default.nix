
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cartographer-ros, catkin, map-server, move-base, ridgeback-navigation, roslaunch, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-ridgeback-cartographer-navigation";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ridgeback_cartographer_navigation-release/archive/release/melodic/ridgeback_cartographer_navigation/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "a5776efee86c57980a6469149c1ab30079b9fbc36e90cbcf7b0e9b4476d0ad10";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslaunch ];
  propagatedBuildInputs = [ cartographer-ros map-server move-base ridgeback-navigation urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files and code for autonomous navigation of the Ridgeback using Google Cartographer'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
