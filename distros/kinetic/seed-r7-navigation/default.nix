
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, catkin, gmapping, joy, map-server, move-base, move-base-msgs, nav-msgs, rospy, teb-local-planner, teleop-twist-joy, urg-node }:
buildRosPackage {
  pname = "ros-kinetic-seed-r7-navigation";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/seed-solutions/seed_r7_ros_pkg-release/archive/release/kinetic/seed_r7_navigation/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "2c3e8effa191e252c8ec204c154e4caeaeaefed04b8b948c9e1c88b5fc4c659e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ amcl gmapping joy map-server move-base move-base-msgs nav-msgs rospy teb-local-planner teleop-twist-joy urg-node ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The seed_r7_navigation package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
