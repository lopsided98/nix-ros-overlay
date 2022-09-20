
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cartographer-ros, catkin, husky-navigation, map-server, move-base, roslaunch, urdf, xacro }:
buildRosPackage {
  pname = "ros-melodic-husky-cartographer-navigation";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky_cartographer_navigation-release/archive/release/melodic/husky_cartographer_navigation/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "1912f181984d2181fd512a7612854756ecc53be736d111c8cc9d59cca2304c24";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ cartographer-ros husky-navigation map-server move-base urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files and code for autonomous navigation of the Husky using Google Cartographer'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
