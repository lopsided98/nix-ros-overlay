
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, laser-filters, nav-msgs, roslaunch, roslint, rospy, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-map-laser";
  version = "0.0.5-r1";

  src = fetchurl {
    url = "https://github.com/wu-robotics/laser_filtering_release/archive/release/noetic/map_laser/0.0.5-1.tar.gz";
    name = "0.0.5-1.tar.gz";
    sha256 = "9c55dec2f10d9b6710024e9af11b0a3e46a677c0e524b4d13856da9b4712d5ca";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch roslint ];
  propagatedBuildInputs = [ laser-filters nav-msgs rospy sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Filters a laser scan to remove points that are in the current static map'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
