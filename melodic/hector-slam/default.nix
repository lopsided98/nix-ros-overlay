
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hector-map-server, hector-marker-drawing, hector-nav-msgs, hector-mapping, hector-imu-attitude-to-tf, hector-slam-launch, catkin, hector-trajectory-server, hector-geotiff-plugins, hector-map-tools, hector-geotiff, hector-compressed-map-transport }:
buildRosPackage {
  pname = "ros-melodic-hector-slam";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/melodic/hector_slam/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "2285de5a4920e257cfb7d9f1a6bd121c00b53201c49060552c17ed78511ffb60";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ hector-map-server hector-compressed-map-transport hector-nav-msgs hector-mapping hector-imu-attitude-to-tf hector-slam-launch hector-trajectory-server hector-geotiff-plugins hector-map-tools hector-geotiff hector-marker-drawing ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The hector_slam metapackage that installs hector_mapping and related packages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
