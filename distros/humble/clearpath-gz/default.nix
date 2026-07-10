
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, clearpath-common, clearpath-generator-gz, clearpath-viz, ign-ros2-control, ros-gz }:
buildRosPackage {
  pname = "ros-humble-clearpath-gz";
  version = "1.3.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_simulator-release/archive/release/humble/clearpath_gz/1.3.3-1.tar.gz";
    name = "1.3.3-1.tar.gz";
    sha256 = "4b597fddcd3ac11a14839008e0b9219b97b6dc0f874c578b17cc7db70e9b0b42";
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
