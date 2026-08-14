
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, clearpath-common, clearpath-generator-gz, clearpath-viz, gz-ros2-control, ros-gz }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-gz";
  version = "2.9.4-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_simulator-release/archive/release/jazzy/clearpath_gz/2.9.4-1.tar.gz";
    name = "2.9.4-1.tar.gz";
    sha256 = "8ddd144f72aaf55c51868db11f0dd1babe4e75d5bafb9677801448554c20f310";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ clearpath-common clearpath-generator-gz clearpath-viz gz-ros2-control ros-gz ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Clearpath Gazebo Simulator";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
