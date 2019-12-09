
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, nav-msgs, dynamic-reconfigure, catkin, geographic-msgs, visualization-msgs, geodesy, rospy, roslaunch, rostest }:
buildRosPackage {
  pname = "ros-kinetic-route-network";
  version = "0.2.4";

  src = fetchurl {
    url = "https://github.com/ros-geographic-info/open_street_map-release/archive/release/kinetic/route_network/0.2.4-0.tar.gz";
    name = "0.2.4-0.tar.gz";
    sha256 = "8aa80c3077576ce20a1b468ced79a0cd74b98c2d21aa8cce04f124b7719e7232";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs dynamic-reconfigure geographic-msgs visualization-msgs geodesy rospy nav-msgs rostest ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ geometry-msgs dynamic-reconfigure geographic-msgs visualization-msgs geodesy rospy nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Route network graphing and path planning.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
