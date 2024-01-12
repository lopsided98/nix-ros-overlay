
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hector-compressed-map-transport, hector-geotiff, hector-geotiff-launch, hector-geotiff-plugins, hector-imu-attitude-to-tf, hector-map-server, hector-map-tools, hector-mapping, hector-marker-drawing, hector-nav-msgs, hector-slam-launch, hector-trajectory-server }:
buildRosPackage {
  pname = "ros-noetic-hector-slam";
  version = "0.5.2-r4";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/noetic/hector_slam/0.5.2-4.tar.gz";
    name = "0.5.2-4.tar.gz";
    sha256 = "d2d894897f630824f2ea1638608e99badafff6aa0a4b1940c1fc59b6b0e5eb64";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ hector-compressed-map-transport hector-geotiff hector-geotiff-launch hector-geotiff-plugins hector-imu-attitude-to-tf hector-map-server hector-map-tools hector-mapping hector-marker-drawing hector-nav-msgs hector-slam-launch hector-trajectory-server ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The hector_slam metapackage that installs hector_mapping and related packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
