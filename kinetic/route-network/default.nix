
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geographic-msgs, rostest, geodesy, nav-msgs, dynamic-reconfigure, rospy, roslaunch, visualization-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-route-network";
  version = "0.2.4";

  src = fetchurl {
    url = "https://github.com/ros-geographic-info/open_street_map-release/archive/release/kinetic/route_network/0.2.4-0.tar.gz";
    name = "0.2.4-0.tar.gz";
    sha256 = "8aa80c3077576ce20a1b468ced79a0cd74b98c2d21aa8cce04f124b7719e7232";
  };

  buildType = "catkin";
  buildInputs = [ geographic-msgs rostest geodesy nav-msgs dynamic-reconfigure rospy visualization-msgs geometry-msgs ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ geographic-msgs geodesy nav-msgs rospy dynamic-reconfigure visualization-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Route network graphing and path planning.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
