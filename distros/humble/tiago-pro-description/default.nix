
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, launch-testing-ament-cmake, omni-base-description, pal-sea-arm-description, pal-urdf-utils, robot-state-publisher, tiago-pro-head-description, urdf-test, xacro }:
buildRosPackage {
  pname = "ros-humble-tiago-pro-description";
  version = "2.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tiago_pro_robot-release/archive/release/humble/tiago_pro_description/2.5.1-1.tar.gz";
    name = "2.5.1-1.tar.gz";
    sha256 = "4d2e7c70a25720d9bbe3b896831294e9fe64fc7e8736e7d5c5f1c115e48ff1ab";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ament-cmake-python ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common launch-testing-ament-cmake urdf-test ];
  propagatedBuildInputs = [ omni-base-description pal-sea-arm-description pal-urdf-utils robot-state-publisher tiago-pro-head-description xacro ];
  nativeBuildInputs = [ ament-cmake-auto ament-cmake-python ];

  meta = {
    description = "The tiago_pro_description package";
    license = with lib.licenses; [ asl20 ];
  };
}
