
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, nav-msgs, pr2-msgs, python3Packages, rospy, std-msgs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-noetic-wifi-ddwrt";
  version = "0.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/wifi_ddwrt-release/archive/release/noetic/wifi_ddwrt/0.2.2-1.tar.gz";
    name = "0.2.2-1.tar.gz";
    sha256 = "067188231f50e4d113d92c4993b57981f8b065e914d3f3bd44da8bcd976c4ef6";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime nav-msgs pr2-msgs python3Packages.mechanize rospy std-msgs tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Access to the DD-WRT wifi'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
