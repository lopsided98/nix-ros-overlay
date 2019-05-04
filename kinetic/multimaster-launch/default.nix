
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, master-sync-fkie, roslint, catkin, message-relay, clock-relay, tf2-relay, master-discovery-fkie, roslaunch }:
buildRosPackage {
  pname = "ros-kinetic-multimaster-launch";
  version = "0.0.1";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/cpr_multimaster_tools-release/archive/release/kinetic/multimaster_launch/0.0.1-0.tar.gz;
    sha256 = "13f34673d7815a9ff19c831a603906cececba0aa969b734896d449cd9c8b6570";
  };

  checkInputs = [ roslaunch roslint ];
  propagatedBuildInputs = [ master-sync-fkie message-relay clock-relay tf2-relay master-discovery-fkie ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Multi-master bringup launch files for CPR platforms'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
