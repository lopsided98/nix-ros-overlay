
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, catkin, gmapping, map-server, move-base, roslaunch, urdf, xacro }:
buildRosPackage {
  pname = "ros-noetic-ridgeback-navigation";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ridgeback-release/archive/release/noetic/ridgeback_navigation/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "98b2f6d912b2be7f325469cc49348708a739186f3c1a235af6acfecd731ffe5e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ amcl gmapping map-server move-base urdf xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Launch files and code for autonomous navigation of the Ridgeback'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
