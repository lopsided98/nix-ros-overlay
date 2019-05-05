
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, roslib, laser-filters, nav-msgs, rospy, std-msgs, tf }:
buildRosPackage {
  pname = "ros-lunar-map-laser";
  version = "0.0.4";

  src = fetchurl {
    url = https://github.com/wu-robotics/laser_filtering_release/archive/release/lunar/map_laser/0.0.4-0.tar.gz;
    sha256 = "f0bebbb23f590f8d9a130b409fbd32453f4f616baa39d99803a78667eb3e0dc3";
  };

  buildInputs = [ sensor-msgs nav-msgs rospy std-msgs tf ];
  propagatedBuildInputs = [ tf sensor-msgs laser-filters nav-msgs rospy std-msgs roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Filters a laser scan to remove points that are in the current static map'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
