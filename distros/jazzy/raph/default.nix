
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, raph-description, raph-interfaces, raph-teleop }:
buildRosPackage {
  pname = "ros-jazzy-raph";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/raph_common-release/archive/release/jazzy/raph/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "f837740f312f1b607b3c05158fb6439ff935a2fec7e2c1b4402e14ab9d108099";
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
