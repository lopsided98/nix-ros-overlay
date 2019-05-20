
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, stereo-image-proc, roslint, ueye-cam, ar-track-alvar, hironx-ros-bridge, catkin, rostest, nextage-description }:
buildRosPackage {
  pname = "ros-kinetic-nextage-ros-bridge";
  version = "0.8.5-r1";

  src = fetchurl {
    url = https://github.com/tork-a/rtmros_nextage-release/archive/release/kinetic/nextage_ros_bridge/0.8.5-1.tar.gz;
    sha256 = "ba25c9b0dcb8c88384ce7bbc8eb4e05be293b7362da7112c035c7b603906c3d1";
  };

  buildInputs = [ nextage-description hironx-ros-bridge roslint ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ stereo-image-proc ueye-cam ar-track-alvar hironx-ros-bridge nextage-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A main ROS interface for developers and users of <a href="http://nextage.kawada.jp/en/">Nextage</a> dual-armed robot from Kawada Robotics Inc. Developers can build their own application that takes control over Nextage via this package. Interface for both ROS and <a href="http://openrtm.org/">OpenRTM</a> is provided.'';
    license = with lib.licenses; [ bsdOriginal mit ];
  };
}
