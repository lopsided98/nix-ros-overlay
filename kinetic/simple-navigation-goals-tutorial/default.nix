
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, move-base-msgs, actionlib, tf }:
buildRosPackage {
  pname = "ros-kinetic-simple-navigation-goals-tutorial";
  version = "0.2.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation_tutorials-release/archive/release/kinetic/simple_navigation_goals_tutorial/0.2.3-0.tar.gz;
    sha256 = "c10b2a1e98aa617b16dbea9340eb73e50cc8b5184f1bd454884d0b6505a09d9f";
  };

  buildInputs = [ move-base-msgs tf roscpp actionlib ];
  propagatedBuildInputs = [ move-base-msgs tf roscpp actionlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The simple_navigation_goals_tutorial package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
