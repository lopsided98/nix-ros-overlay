
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-bev-mavros";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/BV-OpenSource/heifu-release/archive/release/melodic/bev_mavros/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "cae660a4ee5fc7bc2899162c75c148204d5c149c96fbc179e3ced9d05a01604a";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The heifu mavros package'';
    license = with lib.licenses; [ asl20 ];
  };
}
