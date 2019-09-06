
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, master-sync-fkie, catkin, message-relay, clock-relay, tf2-relay, master-discovery-fkie, roslaunch }:
buildRosPackage {
  pname = "ros-melodic-multimaster-launch";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/cpr_multimaster_tools-release/archive/release/melodic/multimaster_launch/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "c825dbbb0b8082547b430423181630c5fc96e45e2d60f0110f94bcbb873a43cc";
  };

  buildType = "catkin";
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ master-sync-fkie message-relay clock-relay tf2-relay master-discovery-fkie ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Multi-master bringup launch files for CPR platforms'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
