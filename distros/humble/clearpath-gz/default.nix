
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, clearpath-common, clearpath-generator-gz, clearpath-viz, ign-ros2-control, ros-gz }:
buildRosPackage {
  pname = "ros-humble-clearpath-gz";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_simulator-release/archive/release/humble/clearpath_gz/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "a9ecf4991540e76388df2995ace61c1768049031fe61e54ea49ab8f6e5424ee1";
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
