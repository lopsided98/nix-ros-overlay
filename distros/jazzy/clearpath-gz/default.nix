
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, clearpath-common, clearpath-generator-gz, clearpath-viz, gz-ros2-control, ros-gz }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-gz";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_simulator-release/archive/release/jazzy/clearpath_gz/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "547d6103267c8e099dde22b7368ed895ab990be4e01fe0c9d01cf3957f50632e";
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
