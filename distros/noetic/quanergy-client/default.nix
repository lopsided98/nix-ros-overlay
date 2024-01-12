
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, pcl }:
buildRosPackage {
  pname = "ros-noetic-quanergy-client";
  version = "5.0.0-r1";

  src = fetchurl {
    url = "https://github.com/QuanergySystems/quanergy_client-release/archive/release/noetic/quanergy_client/5.0.0-1.tar.gz";
    name = "5.0.0-1.tar.gz";
    sha256 = "213f76e7975be608547c5459b9ddcea593993460236800dfd5e1fd90fd821f29";
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
