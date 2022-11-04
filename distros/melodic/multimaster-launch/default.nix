
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, clock-relay, master-discovery-fkie, master-sync-fkie, message-relay, roslaunch, tf2-relay }:
buildRosPackage {
  pname = "ros-melodic-multimaster-launch";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/cpr_multimaster_tools-release/archive/release/melodic/multimaster_launch/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "c825dbbb0b8082547b430423181630c5fc96e45e2d60f0110f94bcbb873a43cc";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ clock-relay master-discovery-fkie master-sync-fkie message-relay tf2-relay ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Multi-master bringup launch files for CPR platforms'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
