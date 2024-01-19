
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hector-geotiff, hector-geotiff-plugins, hector-map-server, hector-mapping, hector-trajectory-server, rviz, tf, topic-tools }:
buildRosPackage {
  pname = "ros-noetic-hector-slam-launch";
  version = "0.5.2-r4";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/noetic/hector_slam_launch/0.5.2-4.tar.gz";
    name = "0.5.2-4.tar.gz";
    sha256 = "7942ad6c108ead0b1146131ae0b039a8512c229e45fb40bec6620acf2e1a3105";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ hector-geotiff hector-geotiff-plugins hector-map-server hector-mapping hector-trajectory-server rviz tf topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_slam_launch contains launch files for launching hector_slam with different robot systems/setups/postprocessing scenarios.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
