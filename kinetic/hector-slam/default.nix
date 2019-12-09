
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hector-map-server, hector-marker-drawing, hector-nav-msgs, hector-mapping, hector-imu-attitude-to-tf, hector-slam-launch, catkin, hector-trajectory-server, hector-geotiff-plugins, hector-map-tools, hector-geotiff, hector-compressed-map-transport }:
buildRosPackage {
  pname = "ros-kinetic-hector-slam";
  version = "0.3.5";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/kinetic/hector_slam/0.3.5-0.tar.gz";
    name = "0.3.5-0.tar.gz";
    sha256 = "0441f8fb971a4213fe1ccdf6711538958b37bdc7d4ecd83e1b43a24c6bccc19d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ hector-map-server hector-compressed-map-transport hector-nav-msgs hector-mapping hector-imu-attitude-to-tf hector-slam-launch hector-trajectory-server hector-geotiff-plugins hector-map-tools hector-geotiff hector-marker-drawing ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The hector_slam metapackage that installs hector_mapping and related packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
