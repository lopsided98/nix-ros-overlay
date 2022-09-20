
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hector-compressed-map-transport, hector-geotiff, hector-geotiff-plugins, hector-imu-attitude-to-tf, hector-map-server, hector-map-tools, hector-mapping, hector-marker-drawing, hector-nav-msgs, hector-slam-launch, hector-trajectory-server }:
buildRosPackage {
  pname = "ros-melodic-hector-slam";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/melodic/hector_slam/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "5de924ad2cd6d85d5b5ff4ea8762e2b9ea5e68139133e42a0dd7cb537503ee49";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ hector-compressed-map-transport hector-geotiff hector-geotiff-plugins hector-imu-attitude-to-tf hector-map-server hector-map-tools hector-mapping hector-marker-drawing hector-nav-msgs hector-slam-launch hector-trajectory-server ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The hector_slam metapackage that installs hector_mapping and related packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
