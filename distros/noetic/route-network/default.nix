
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, geodesy, geographic-msgs, geometry-msgs, nav-msgs, roslaunch, rospy, rostest, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-route-network";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-geographic-info/open_street_map-release/archive/release/noetic/route_network/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "aa4bfa6f99b672ea11f480299a2f4d6b35fa70958e6c883f0a2ee7dabe1e4154";
  };

  buildType = "catkin";
  buildInputs = [ catkin rostest ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ dynamic-reconfigure geodesy geographic-msgs geometry-msgs nav-msgs rospy visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Route network graphing and path planning.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
