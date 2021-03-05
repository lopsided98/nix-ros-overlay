
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-fetch-maps";
  version = "0.9.0-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_ros-release/archive/release/noetic/fetch_maps/0.9.0-1.tar.gz";
    name = "0.9.0-1.tar.gz";
    sha256 = "6d30d9bd13cf660c83350a3f9181654ad9788809f867289b00a1cf3a4534f533";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The fetch_maps package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
