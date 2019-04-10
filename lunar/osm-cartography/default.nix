
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamic-reconfigure, catkin, geodesy, geographic-msgs, std-msgs, rviz, visualization-msgs, route-network, rospy, roslaunch, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-osm-cartography";
  version = "0.2.4";

  src = fetchurl {
    url = https://github.com/ros-geographic-info/open_street_map-release/archive/release/lunar/osm_cartography/0.2.4-0.tar.gz;
    sha256 = "020bae6b6f3d53f164357a7bc5ddc5108505da00af531fff7ed405bf91c0a62c";
  };

  buildInputs = [ geodesy geographic-msgs dynamic-reconfigure std-msgs tf visualization-msgs geometry-msgs rospy ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ tf rospy geodesy geographic-msgs rviz route-network dynamic-reconfigure std-msgs visualization-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Geographic mapping using Open Street Map data.'';
    #license = lib.licenses.BSD;
  };
}
