
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-python, ament-lint-auto, ament-lint-common, launch, launch-ros, robot-state-publisher, rviz2, xacro }:
buildRosPackage {
  pname = "ros-humble-orbbec-description";
  version = "2.10.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/orbbec_camera_v2-release/archive/release/humble/orbbec_description/2.10.7-1.tar.gz";
    name = "2.10.7-1.tar.gz";
    sha256 = "3d17edaea3c73ff44508dfc632de85b533e2e8eb84e9ceac202ef1e058b07983";
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
