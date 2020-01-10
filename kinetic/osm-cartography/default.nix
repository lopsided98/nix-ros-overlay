
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, geodesy, geographic-msgs, geometry-msgs, roslaunch, rospy, route-network, rviz, std-msgs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-osm-cartography";
  version = "0.2.4";

  src = fetchurl {
    url = "https://github.com/ros-geographic-info/open_street_map-release/archive/release/kinetic/osm_cartography/0.2.4-0.tar.gz";
    name = "0.2.4-0.tar.gz";
    sha256 = "b7b44c6d2025f65348f479c1c748e9dc56d9bb6fbda5c6f37fac01de6c428f40";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ dynamic-reconfigure geodesy geographic-msgs geometry-msgs rospy route-network rviz std-msgs tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Geographic mapping using Open Street Map data.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
