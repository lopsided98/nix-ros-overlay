
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, launch-param-builder, launch-testing-ament-cmake, pal-urdf-utils, realsense2-description, robot-state-publisher, tiago-pro-head-controller-configuration, urdf-test, xacro }:
buildRosPackage {
  pname = "ros-humble-tiago-pro-head-description";
  version = "1.6.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/tiago_pro_head_robot-release/archive/release/humble/tiago_pro_head_description/1.6.0-1.tar.gz";
    name = "1.6.0-1.tar.gz";
    sha256 = "38405d10103c968791cce9a7c44969b08caa887b771b92a4c83035c8eeace868";
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
