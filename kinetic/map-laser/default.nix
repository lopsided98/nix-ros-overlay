
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, laser-filters, std-msgs, tf, roslib, catkin, rospy, nav-msgs }:
buildRosPackage {
  pname = "ros-kinetic-map-laser";
  version = "0.0.4";

  src = fetchurl {
    url = "https://github.com/wu-robotics/laser_filtering_release/archive/release/kinetic/map_laser/0.0.4-0.tar.gz";
    name = "0.0.4-0.tar.gz";
    sha256 = "e6f5a290c477b8bbc4e30a13f546d20d7e7c9c3133d2e7463d912c71bffda2b8";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs std-msgs tf rospy nav-msgs ];
  propagatedBuildInputs = [ sensor-msgs laser-filters std-msgs tf roslib rospy nav-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Filters a laser scan to remove points that are in the current static map'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
