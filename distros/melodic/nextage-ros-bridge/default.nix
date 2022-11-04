
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ar-track-alvar, catkin, hironx-ros-bridge, nextage-description, roslint, rostest, stereo-image-proc }:
buildRosPackage {
  pname = "ros-melodic-nextage-ros-bridge";
  version = "0.8.6-r3";

  src = fetchurl {
    url = "https://github.com/tork-a/rtmros_nextage-release/archive/release/melodic/nextage_ros_bridge/0.8.6-3.tar.gz";
    name = "0.8.6-3.tar.gz";
    sha256 = "f727161636ea80db90488a1fd7d46ace9735585285f3af2cd6a8dd4fdf846f2f";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslint ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ ar-track-alvar hironx-ros-bridge nextage-description stereo-image-proc ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A main ROS interface for developers and users of <a href="http://nextage.kawada.jp/en/">Nextage</a> dual-armed robot from Kawada Robotics Inc. Developers can build their own application that takes control over Nextage via this package. Interface for both ROS and <a href="http://openrtm.org/">OpenRTM</a> is provided.'';
    license = with lib.licenses; [ bsdOriginal mit ];
  };
}
