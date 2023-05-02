
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-rolling-swri-dbw-interface";
  version = "3.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/rolling/swri_dbw_interface/3.5.0-2.tar.gz";
    name = "3.5.0-2.tar.gz";
    sha256 = "6273cdd159df2826162c7b3f05ba8e4ab328aeffe2add1dbdb68124cdce46f04";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This package provides documentation on common interface conventions for
    drive-by-wire systems.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
