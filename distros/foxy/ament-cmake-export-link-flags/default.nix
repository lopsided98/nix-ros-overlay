
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-foxy-ament-cmake-export-link-flags";
  version = "0.9.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/foxy/ament_cmake_export_link_flags/0.9.9-1.tar.gz";
    name = "0.9.9-1.tar.gz";
    sha256 = "45aebc1193ea14668a8f6c03c1b7a8d44684b4a86d936f29499224b088a5ed6f";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''The ability to export link flags to downstream packages in the ament buildsystem.'';
    license = with lib.licenses; [ asl20 ];
  };
}
