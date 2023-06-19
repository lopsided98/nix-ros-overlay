
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-iron-ament-cmake-version";
  version = "2.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/iron/ament_cmake_version/2.0.2-2.tar.gz";
    name = "2.0.2-2.tar.gz";
    sha256 = "e1ef13a54fa80209049696f07227cabb1c82bee4323046e0435fef5ad955fc2c";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The ability to override the exported package version in the ament buildsystem.'';
    license = with lib.licenses; [ asl20 ];
  };
}
