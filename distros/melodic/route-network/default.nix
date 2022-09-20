
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, geodesy, geographic-msgs, geometry-msgs, nav-msgs, roslaunch, rospy, rostest, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-route-network";
  version = "0.2.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-geographic-info/open_street_map-release/archive/release/melodic/route_network/0.2.5-1.tar.gz";
    name = "0.2.5-1.tar.gz";
    sha256 = "4100ef3d698459819f6f5ce27ece00c7f361daa3a7fe69e64ad6d2725e173ec0";
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
