
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, catkin, pythonPackages, message-generation, nav-msgs, message-runtime, rospy, std-msgs, pr2-msgs, visualization-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-wifi-ddwrt";
  version = "0.2.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/wifi_ddwrt-release/archive/release/lunar/wifi_ddwrt/0.2.0-0.tar.gz;
    sha256 = "b2d99f241dec349f8e5335f8913357948999e9b92b2febcf78cd8ef32f808be7";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ pythonPackages.mechanize tf nav-msgs message-runtime rospy std-msgs pr2-msgs visualization-msgs geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Access to the DD-WRT wifi'';
    #license = lib.licenses.BSD;
  };
}
