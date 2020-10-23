
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-foxy-ament-cmake-export-link-flags";
  version = "0.9.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/foxy/ament_cmake_export_link_flags/0.9.7-1.tar.gz";
    name = "0.9.7-1.tar.gz";
    sha256 = "b1b9bfcc232b61d4641f6b6044e9c8436e415b9f9ec403f35de6e979c8f8c98b";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The ability to export link flags to downstream packages in the ament buildsystem.'';
    license = with lib.licenses; [ asl20 ];
  };
}
