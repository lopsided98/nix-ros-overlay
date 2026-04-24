
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, clearpath-common, clearpath-generator-gz, clearpath-viz, gz-ros2-control, ros-gz }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-gz";
  version = "2.9.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_simulator-release/archive/release/jazzy/clearpath_gz/2.9.1-1.tar.gz";
    name = "2.9.1-1.tar.gz";
    sha256 = "89ee73a2736a901da47b5c51281714ac2c5e7d5cc444c8157253d8fa9cda0d20";
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
