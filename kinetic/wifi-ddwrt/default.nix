
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, catkin, pythonPackages, message-generation, nav-msgs, message-runtime, rospy, std-msgs, pr2-msgs, visualization-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-wifi-ddwrt";
  version = "0.2.0-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/wifi_ddwrt-release/archive/release/kinetic/wifi_ddwrt/0.2.0-1.tar.gz;
    sha256 = "feca84c264ef576cc8f1139dc7129bf3e5aebc40520aff531b2973df4d50e9f5";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ pythonPackages.mechanize tf nav-msgs message-runtime rospy std-msgs pr2-msgs visualization-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Access to the DD-WRT wifi'';
    #license = lib.licenses.BSD;
  };
}
