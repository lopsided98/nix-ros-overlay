
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, raph-description, raph-interfaces, raph-teleop }:
buildRosPackage {
  pname = "ros-jazzy-raph";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/raph_common-release/archive/release/jazzy/raph/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "a093aab771f88dd73d15c9125ac66ee907f46bb72615958184f007be95929e95";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ raph-description raph-interfaces raph-teleop ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Packages for Raph Rover common to the robot and desktop";
    license = with lib.licenses; [ mit ];
  };
}
