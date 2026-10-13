
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-python, ament-lint-auto, ament-lint-common, launch, launch-ros, robot-state-publisher, rviz2, xacro }:
buildRosPackage {
  pname = "ros-lyrical-orbbec-description";
  version = "2.10.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/orbbec_camera_v2-release/archive/release/lyrical/orbbec_description/2.10.6-1.tar.gz";
    name = "2.10.6-1.tar.gz";
    sha256 = "7a0611caaa4471b992bc891d316386aafc351ffe9566fda8dcb73dac2956b735";
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
