
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, roslib, laser-filters, nav-msgs, rospy, std-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-map-laser";
  version = "0.0.4";

  src = fetchurl {
    url = "https://github.com/wu-robotics/laser_filtering_release/archive/release/melodic/map_laser/0.0.4-0.tar.gz";
    name = "0.0.4-0.tar.gz";
    sha256 = "eea82c4a217ce37a62d9e6dc06c0a309cbe738b5da63ea573aea59d8efa25d67";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs nav-msgs rospy std-msgs tf ];
  propagatedBuildInputs = [ tf sensor-msgs laser-filters nav-msgs rospy std-msgs roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Filters a laser scan to remove points that are in the current static map'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
