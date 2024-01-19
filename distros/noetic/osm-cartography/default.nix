
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, geodesy, geographic-msgs, geometry-msgs, roslaunch, rospy, route-network, std-msgs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-osm-cartography";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-geographic-info/open_street_map-release/archive/release/noetic/osm_cartography/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "8b5dfd2079b88425f498a5d590460ce9c32a9016413fa00af04fed5800c99da4";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ dynamic-reconfigure geodesy geographic-msgs geometry-msgs rospy route-network std-msgs tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Geographic mapping using Open Street Map data.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
