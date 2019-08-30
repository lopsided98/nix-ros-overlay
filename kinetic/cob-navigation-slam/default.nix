
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslaunch, cob-navigation-global, catkin, cob-mapping-slam, rviz, cob-supported-robots, cob-navigation-config }:
buildRosPackage {
  pname = "ros-kinetic-cob-navigation-slam";
  version = "0.6.8-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_navigation-release/archive/release/kinetic/cob_navigation_slam/0.6.8-1.tar.gz;
    sha256 = "55b4755833c8dc86949c417eecc4167cf2600f99130f093db3ade913eb3f4d89";
  };

  checkInputs = [ cob-supported-robots roslaunch ];
  propagatedBuildInputs = [ cob-mapping-slam cob-navigation-config rviz cob-navigation-global ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides launch files for running  <a href="http://ros.org/wiki/care-o-bot">Care-O-bot</a> with the  <a href="http://ros.org/wiki/gmapping">gmapping</a> slam package of ROS. It further provides the usual navigation functionalities as provided by the <a href="http://ros.org/wiki/move_base">move_base</a> node.'';
    license = with lib.licenses; [ asl20 ];
  };
}
