
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gmapping, urg-node, map-server, amcl, joy, catkin, move-base, move-base-msgs, nav-msgs, teleop-twist-joy, teb-local-planner }:
buildRosPackage {
  pname = "ros-kinetic-seed-r7-navigation";
  version = "0.2.0-r2";

  src = fetchurl {
    url = "https://github.com/seed-solutions/seed_r7_ros_pkg-release/archive/release/kinetic/seed_r7_navigation/0.2.0-2.tar.gz";
    name = "0.2.0-2.tar.gz";
    sha256 = "3f53e6e2714ba73a8df16a9298206b409fd523346c928a88bda17e355c959610";
  };

  buildType = "catkin";
  buildInputs = [ gmapping urg-node map-server amcl joy move-base move-base-msgs nav-msgs teleop-twist-joy teb-local-planner ];
  propagatedBuildInputs = [ gmapping urg-node map-server amcl joy move-base move-base-msgs nav-msgs teleop-twist-joy teb-local-planner ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The seed_r7_navigation package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
