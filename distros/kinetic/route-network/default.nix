
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, geodesy, geographic-msgs, geometry-msgs, nav-msgs, roslaunch, rospy, rostest, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-route-network";
  version = "0.2.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-geographic-info/open_street_map-release/archive/release/kinetic/route_network/0.2.5-1.tar.gz";
    name = "0.2.5-1.tar.gz";
    sha256 = "6eb0ef1b5f46619843f436f4e7fae9b7dd5f738239be6a491e5aa988ad05565f";
  };

  buildType = "catkin";
  buildInputs = [ rostest ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ dynamic-reconfigure geodesy geographic-msgs geometry-msgs nav-msgs rospy visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Route network graphing and path planning.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
