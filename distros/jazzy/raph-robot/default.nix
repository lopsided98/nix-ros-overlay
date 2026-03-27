
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, raph, raph-bringup, raph-fw, raph-oak }:
buildRosPackage {
  pname = "ros-jazzy-raph-robot";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/raph_robot-release/archive/release/jazzy/raph_robot/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "2ff4f703f4f65b6aa65bdf1324d5e281c59fdfc8d2418293f0d509a7d0d4414c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ raph raph-bringup raph-fw raph-oak ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Packages for Raph Rover running on the robot.";
    license = with lib.licenses; [ mit ];
  };
}
