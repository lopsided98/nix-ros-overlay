
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-humble-ament-cmake-version";
  version = "1.3.15-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/humble/ament_cmake_version/1.3.15-1.tar.gz";
    name = "1.3.15-1.tar.gz";
    sha256 = "05ced677a5551871677a9b49da46f004f6288ce1bb504ebccfe54bbba61c7a6f";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "The ability to override the exported package version in the ament buildsystem.";
    license = with lib.licenses; [ asl20 ];
  };
}
