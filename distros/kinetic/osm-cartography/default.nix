
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, geodesy, geographic-msgs, geometry-msgs, roslaunch, rospy, route-network, std-msgs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-osm-cartography";
  version = "0.2.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-geographic-info/open_street_map-release/archive/release/kinetic/osm_cartography/0.2.5-1.tar.gz";
    name = "0.2.5-1.tar.gz";
    sha256 = "3ec12db5c5af5db9918c1badff1817c29278daa405a71afe6dd3c09fd2b9b484";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ dynamic-reconfigure geodesy geographic-msgs geometry-msgs rospy route-network std-msgs tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Geographic mapping using Open Street Map data.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
