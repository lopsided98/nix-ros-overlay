
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hector-geotiff, hector-mapping, hector-trajectory-server, catkin, hector-geotiff-plugins, hector-map-server }:
buildRosPackage {
  pname = "ros-kinetic-hector-slam-launch";
  version = "0.3.5";

  src = fetchurl {
    url = https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/kinetic/hector_slam_launch/0.3.5-0.tar.gz;
    sha256 = "bba85c03b7ceb0494cab6d0c4396bf5caf898e71210671f3011db010ce9262f0";
  };

  propagatedBuildInputs = [ hector-geotiff hector-mapping hector-trajectory-server hector-geotiff-plugins hector-map-server ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_slam_launch contains launch files for launching hector_slam with different robot systems/setups/postprocessing scenarios.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
