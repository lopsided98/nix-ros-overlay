
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, laser-filters, nav-msgs, roslaunch, roslint, rospy, sensor-msgs, std-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-map-laser";
  version = "0.0.6-r1";

  src = fetchurl {
    url = "https://github.com/wu-robotics/laser_filtering_release/archive/release/noetic/map_laser/0.0.6-1.tar.gz";
    name = "0.0.6-1.tar.gz";
    sha256 = "9aa35f4b0c4d8ffd7c229beb0f2090a1992222ee368501622d08a7850f74cb85";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch roslint ];
  propagatedBuildInputs = [ laser-filters nav-msgs rospy sensor-msgs std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Filters a laser scan to remove points that are in the current static map";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
