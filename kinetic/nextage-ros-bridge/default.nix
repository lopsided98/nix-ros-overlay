
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, stereo-image-proc, roslint, ueye-cam, hironx-ros-bridge, catkin, rostest, nextage-description }:
buildRosPackage {
  pname = "ros-kinetic-nextage-ros-bridge";
  version = "0.8.4";

  src = fetchurl {
    url = https://github.com/tork-a/rtmros_nextage-release/archive/release/kinetic/nextage_ros_bridge/0.8.4-0.tar.gz;
    sha256 = "ee0d8d99fad8476ad39ccbd1f95f22625c689d8e23cd176b841b9c267f1ba87f";
  };

  buildInputs = [ nextage-description hironx-ros-bridge roslint ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ nextage-description hironx-ros-bridge stereo-image-proc ueye-cam ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A main ROS interface for developers and users of <a href="http://nextage.kawada.jp/en/">Nextage</a> dual-armed robot from Kawada Robotics Inc. Developers can build their own application that takes control over Nextage via this package. Interface for both ROS and <a href="http://openrtm.org/">OpenRTM</a> is provided.'';
    #license = lib.licenses.BSD;
  };
}
