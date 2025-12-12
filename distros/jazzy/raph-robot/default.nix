
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, raph, raph-bringup }:
buildRosPackage {
  pname = "ros-jazzy-raph-robot";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/raph_robot-release/archive/release/jazzy/raph_robot/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "7194918b76714c1c820b61b4808ab2ab260c94fca26eae39f31c3570cfa7baf9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ raph raph-bringup ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Packages for Raph Rover running on the robot.";
    license = with lib.licenses; [ mit ];
  };
}
