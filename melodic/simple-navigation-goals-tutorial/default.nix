
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, move-base-msgs, roscpp, tf }:
buildRosPackage {
  pname = "ros-melodic-simple-navigation-goals-tutorial";
  version = "0.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_tutorials-release/archive/release/melodic/simple_navigation_goals_tutorial/0.2.3-1.tar.gz";
    name = "0.2.3-1.tar.gz";
    sha256 = "822743ee6df1764688c0cd3898150d95fa634fc85224ee6e2024d2f45f9d1799";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib move-base-msgs roscpp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The simple_navigation_goals_tutorial package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
