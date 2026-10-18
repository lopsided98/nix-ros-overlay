
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-python, ament-lint-auto, ament-lint-common, launch, launch-ros, robot-state-publisher, rviz2, xacro }:
buildRosPackage {
  pname = "ros-rolling-orbbec-description";
  version = "2.10.6-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/orbbec_camera_v2-release/archive/release/rolling/orbbec_description/2.10.6-3.tar.gz";
    name = "2.10.6-3.tar.gz";
    sha256 = "9b96e9f76efd59360fb9a150bc331bad37f0391d749a93af268b0f28a4b21d91";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python launch launch-ros robot-state-publisher rviz2 xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "TODO: Package description";
    license = with lib.licenses; [ asl20 ];
  };
}
