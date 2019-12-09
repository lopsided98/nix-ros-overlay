
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, route-network, geometry-msgs, dynamic-reconfigure, std-msgs, tf, catkin, geographic-msgs, rviz, visualization-msgs, geodesy, rospy, roslaunch }:
buildRosPackage {
  pname = "ros-kinetic-osm-cartography";
  version = "0.2.4";

  src = fetchurl {
    url = "https://github.com/ros-geographic-info/open_street_map-release/archive/release/kinetic/osm_cartography/0.2.4-0.tar.gz";
    name = "0.2.4-0.tar.gz";
    sha256 = "b7b44c6d2025f65348f479c1c748e9dc56d9bb6fbda5c6f37fac01de6c428f40";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs dynamic-reconfigure std-msgs tf geographic-msgs visualization-msgs geodesy rospy ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ route-network geometry-msgs dynamic-reconfigure std-msgs tf rviz geographic-msgs visualization-msgs geodesy rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Geographic mapping using Open Street Map data.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
