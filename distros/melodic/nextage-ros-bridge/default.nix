
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ar-track-alvar, catkin, hironx-ros-bridge, nextage-description, roslint, rostest, stereo-image-proc }:
buildRosPackage {
  pname = "ros-melodic-nextage-ros-bridge";
  version = "0.8.6-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/rtmros_nextage-release/archive/release/melodic/nextage_ros_bridge/0.8.6-2.tar.gz";
    name = "0.8.6-2.tar.gz";
    sha256 = "5014d98f0b9d5cf399ba28e4d5e6ad295fa53a27f0c33513fe8db544e9661d3c";
  };

  buildType = "catkin";
  buildInputs = [ roslint ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ ar-track-alvar hironx-ros-bridge nextage-description stereo-image-proc ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A main ROS interface for developers and users of <a href="http://nextage.kawada.jp/en/">Nextage</a> dual-armed robot from Kawada Robotics Inc. Developers can build their own application that takes control over Nextage via this package. Interface for both ROS and <a href="http://openrtm.org/">OpenRTM</a> is provided.'';
    license = with lib.licenses; [ bsdOriginal mit ];
  };
}
