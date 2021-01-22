
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hector-geotiff, hector-geotiff-plugins, hector-map-server, hector-mapping, hector-trajectory-server, rviz, tf, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-hector-slam-launch";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/noetic/hector_slam_launch/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "3dce44d3e6f34f737775a61fbea21b85b6a7375d2882abe83450ad77fdb6811f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ hector-geotiff hector-geotiff-plugins hector-map-server hector-mapping hector-trajectory-server rviz tf topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_slam_launch contains launch files for launching hector_slam with different robot systems/setups/postprocessing scenarios.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
