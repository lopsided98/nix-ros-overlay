
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, clearpath-common, clearpath-generator-gz, clearpath-viz, gz-ros2-control, ros-gz }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-gz";
  version = "2.9.5-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_simulator-release/archive/release/jazzy/clearpath_gz/2.9.5-1.tar.gz";
    name = "2.9.5-1.tar.gz";
    sha256 = "8ed8b28aa13c8490520923728e14a0b17cc5ff297e0d8fcd1dcece5474d55392";
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
