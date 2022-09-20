
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dynamic-reconfigure, geodesy, geographic-msgs, geometry-msgs, roslaunch, rospy, route-network, std-msgs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-osm-cartography";
  version = "0.2.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-geographic-info/open_street_map-release/archive/release/melodic/osm_cartography/0.2.5-1.tar.gz";
    name = "0.2.5-1.tar.gz";
    sha256 = "82a7389d369b7bbe5f2fa2f796d5b4994b7b4306ca79a1080882476ee9194d83";
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
