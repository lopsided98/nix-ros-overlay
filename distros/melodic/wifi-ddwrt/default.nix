
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, nav-msgs, pr2-msgs, pythonPackages, rospy, std-msgs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-wifi-ddwrt";
  version = "0.2.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/wifi_ddwrt-release/archive/release/melodic/wifi_ddwrt/0.2.0-0.tar.gz";
    name = "0.2.0-0.tar.gz";
    sha256 = "d9315fb98ca9d63cd7fd67895b3430e832d674a01469a5af7ec18fbd0c57dc7e";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime nav-msgs pr2-msgs pythonPackages.mechanize rospy std-msgs tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Access to the DD-WRT wifi'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
