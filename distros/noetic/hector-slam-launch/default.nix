
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hector-geotiff, hector-geotiff-plugins, hector-map-server, hector-mapping, hector-trajectory-server, rviz, tf, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-hector-slam-launch";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/noetic/hector_slam_launch/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "433a0a583bbfddcd54d1777ec3ec1aaec9124f0b89835538f5e04674b68c319e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ hector-geotiff hector-geotiff-plugins hector-map-server hector-mapping hector-trajectory-server rviz tf topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_slam_launch contains launch files for launching hector_slam with different robot systems/setups/postprocessing scenarios.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
