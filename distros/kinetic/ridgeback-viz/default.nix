
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, ridgeback-description, roslaunch, rviz }:
buildRosPackage {
  pname = "ros-kinetic-ridgeback-viz";
  version = "0.1.1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/ridgeback_desktop-release/archive/release/kinetic/ridgeback_viz/0.1.1-0.tar.gz";
    name = "0.1.1-0.tar.gz";
    sha256 = "81a15a6be2a99b7a78e1e12bed9355c512a2d5e0ee3076c637598796561c4e04";
  };

  buildType = "catkin";
  buildInputs = [ roslaunch ];
  propagatedBuildInputs = [ joint-state-publisher ridgeback-description rviz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Visualization launchers and helpers for Ridgeback.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
