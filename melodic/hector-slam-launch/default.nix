
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hector-geotiff, hector-mapping, hector-trajectory-server, catkin, hector-geotiff-plugins, hector-map-server }:
buildRosPackage {
  pname = "ros-melodic-hector-slam-launch";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/melodic/hector_slam_launch/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "f88c7c33d567ec3e10e4d619b8d8e61d787ea2df0504759bf8513bf142ce9486";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ hector-geotiff hector-mapping hector-trajectory-server hector-geotiff-plugins hector-map-server ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''hector_slam_launch contains launch files for launching hector_slam with different robot systems/setups/postprocessing scenarios.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
