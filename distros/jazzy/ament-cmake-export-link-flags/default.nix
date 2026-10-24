
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-jazzy-ament-cmake-export-link-flags";
  version = "2.5.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/jazzy/ament_cmake_export_link_flags/2.5.7-1.tar.gz";
    name = "2.5.7-1.tar.gz";
    sha256 = "5b5376c619c43b0445697887e94b54011b1e8a5766a03ad798dfa2df6ed0cb47";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "The ability to export link flags to downstream packages in the ament buildsystem.";
    license = with lib.licenses; [ asl20 ];
  };
}
