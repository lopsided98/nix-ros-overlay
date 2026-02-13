
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, launch-param-builder, launch-testing-ament-cmake, pal-urdf-utils, realsense2-description, robot-state-publisher, tiago-pro-head-controller-configuration, urdf-test, xacro }:
buildRosPackage {
  pname = "ros-humble-tiago-pro-head-description";
  version = "1.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tiago_pro_head_robot-release/archive/release/humble/tiago_pro_head_description/1.9.0-1.tar.gz";
    name = "1.9.0-1.tar.gz";
    sha256 = "fe7854d50e0cb62520c8ff116229473c70b3cc99f7ab217ce9baf5fff1846c73";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ament-cmake-python ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common launch-testing-ament-cmake urdf-test ];
  propagatedBuildInputs = [ launch-param-builder pal-urdf-utils realsense2-description robot-state-publisher tiago-pro-head-controller-configuration xacro ];
  nativeBuildInputs = [ ament-cmake-auto ament-cmake-python ];

  meta = {
    description = "The tiago_pro_head_description package";
    license = with lib.licenses; [ asl20 ];
  };
}
