
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, clearpath-common, clearpath-generator-gz, clearpath-viz, ign-ros2-control, ros-gz }:
buildRosPackage {
  pname = "ros-humble-clearpath-gz";
  version = "1.3.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_simulator-release/archive/release/humble/clearpath_gz/1.3.2-1.tar.gz";
    name = "1.3.2-1.tar.gz";
    sha256 = "cc90ccf2c26d2b9c9818f7a2f6e0b6279683176d1302a260945b6d285365092e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ clearpath-common clearpath-generator-gz clearpath-viz ign-ros2-control ros-gz ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Clearpath Gazebo Simulator";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
