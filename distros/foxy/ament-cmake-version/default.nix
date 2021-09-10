
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-foxy-ament-cmake-version";
  version = "0.9.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/foxy/ament_cmake_version/0.9.9-1.tar.gz";
    name = "0.9.9-1.tar.gz";
    sha256 = "b7b9e73d0ec88a5107d3ae72399bed115ef4af80ea5ef80966c4ebc58cff5e84";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The ability to override the exported package version in the ament buildsystem.'';
    license = with lib.licenses; [ asl20 ];
  };
}
