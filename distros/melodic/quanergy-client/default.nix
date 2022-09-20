
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, pcl }:
buildRosPackage {
  pname = "ros-melodic-quanergy-client";
  version = "5.0.0-r2";

  src = fetchurl {
    url = "https://github.com/QuanergySystems/quanergy_client-release/archive/release/melodic/quanergy_client/5.0.0-2.tar.gz";
    name = "5.0.0-2.tar.gz";
    sha256 = "f9374cfdbfd688147cc1135673f55a7935a746ef8376123c3be4133c353d5c5d";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ boost catkin pcl ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Quanergy Sensor SDK'';
    license = with lib.licenses; [ mit ];
  };
}
