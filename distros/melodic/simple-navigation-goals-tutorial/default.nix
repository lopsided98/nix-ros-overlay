
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, move-base-msgs, roscpp, tf }:
buildRosPackage {
  pname = "ros-melodic-simple-navigation-goals-tutorial";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/navigation_tutorials-release/archive/release/melodic/simple_navigation_goals_tutorial/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "463089eeedbdf2ae763fd9459fc309d5fa85bae49f8f6d7129587b36b067a622";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib move-base-msgs roscpp tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The simple_navigation_goals_tutorial package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
