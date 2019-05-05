
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geographic-msgs, rostest, geodesy, nav-msgs, dynamic-reconfigure, rospy, roslaunch, visualization-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-route-network";
  version = "0.2.4";

  src = fetchurl {
    url = https://github.com/ros-geographic-info/open_street_map-release/archive/release/lunar/route_network/0.2.4-0.tar.gz;
    sha256 = "da6edde2357f78c8c91c83eda8eac318e695d4c90f74b3b9c31dad2276cf67b7";
  };

  buildInputs = [ geographic-msgs rostest geodesy nav-msgs dynamic-reconfigure rospy visualization-msgs geometry-msgs ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ geographic-msgs geodesy nav-msgs rospy dynamic-reconfigure visualization-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Route network graphing and path planning.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
