
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-fetch-maps";
  version = "0.7.15";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/kinetic/fetch_maps/0.7.15-0.tar.gz";
    name = "0.7.15-0.tar.gz";
    sha256 = "1949d0dbebb420a48aa5d5be0287ef90f41c8eccf86a947e1cb64742cde7a50a";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The fetch_maps package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
