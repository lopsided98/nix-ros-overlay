
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, clearpath-common, clearpath-generator-gz, clearpath-viz, ign-ros2-control, ros-gz }:
buildRosPackage {
  pname = "ros-humble-clearpath-gz";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_simulator-release/archive/release/humble/clearpath_gz/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "0573623bba39b926633059b84f8b1b30e7cec819f444df61f19193b11803958a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ clearpath-common clearpath-generator-gz clearpath-viz ign-ros2-control ros-gz ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Clearpath Gazebo Simulator'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
