
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, catkin, gmapping, joy, map-server, move-base, move-base-msgs, nav-msgs, rospy, teb-local-planner, teleop-twist-joy, urg-node }:
buildRosPackage {
  pname = "ros-melodic-seed-r7-navigation";
  version = "0.3.3-r1";

  src = fetchurl {
    url = "https://github.com/seed-solutions/seed_r7_ros_pkg-release/archive/release/melodic/seed_r7_navigation/0.3.3-1.tar.gz";
    name = "0.3.3-1.tar.gz";
    sha256 = "4cd0a99daf7b2b78efbeffa4e986d97c6880666eafd3f2d38daf38ce56604e44";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ amcl gmapping joy map-server move-base move-base-msgs nav-msgs rospy teb-local-planner teleop-twist-joy urg-node ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The seed_r7_navigation package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
