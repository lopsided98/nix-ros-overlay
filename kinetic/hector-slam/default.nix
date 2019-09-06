
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hector-geotiff, hector-compressed-map-transport, hector-mapping, hector-trajectory-server, catkin, hector-map-tools, hector-marker-drawing, hector-nav-msgs, hector-slam-launch, hector-imu-attitude-to-tf, hector-geotiff-plugins, hector-map-server }:
buildRosPackage {
  pname = "ros-kinetic-hector-slam";
  version = "0.3.5";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/kinetic/hector_slam/0.3.5-0.tar.gz";
    name = "0.3.5-0.tar.gz";
    sha256 = "0441f8fb971a4213fe1ccdf6711538958b37bdc7d4ecd83e1b43a24c6bccc19d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ hector-geotiff hector-compressed-map-transport hector-mapping hector-trajectory-server hector-map-tools hector-marker-drawing hector-nav-msgs hector-slam-launch hector-imu-attitude-to-tf hector-geotiff-plugins hector-map-server ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The hector_slam metapackage that installs hector_mapping and related packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
