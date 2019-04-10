
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, catkin, pythonPackages, message-generation, nav-msgs, message-runtime, rospy, std-msgs, pr2-msgs, visualization-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-wifi-ddwrt";
  version = "0.2.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/wifi_ddwrt-release/archive/release/melodic/wifi_ddwrt/0.2.0-0.tar.gz;
    sha256 = "d9315fb98ca9d63cd7fd67895b3430e832d674a01469a5af7ec18fbd0c57dc7e";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ pythonPackages.mechanize tf nav-msgs message-runtime rospy std-msgs pr2-msgs visualization-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Access to the DD-WRT wifi'';
    #license = lib.licenses.BSD;
  };
}
