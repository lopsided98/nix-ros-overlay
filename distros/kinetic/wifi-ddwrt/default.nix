
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, nav-msgs, pr2-msgs, pythonPackages, rospy, std-msgs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-kinetic-wifi-ddwrt";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/wifi_ddwrt-release/archive/release/kinetic/wifi_ddwrt/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "feca84c264ef576cc8f1139dc7129bf3e5aebc40520aff531b2973df4d50e9f5";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime nav-msgs pr2-msgs pythonPackages.mechanize rospy std-msgs tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Access to the DD-WRT wifi'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
