
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-python, ament-lint-auto, ament-lint-common, launch, launch-ros, robot-state-publisher, rviz2, xacro }:
buildRosPackage {
  pname = "ros-jazzy-orbbec-description";
  version = "2.10.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/orbbec_camera_v2-release/archive/release/jazzy/orbbec_description/2.10.6-1.tar.gz";
    name = "2.10.6-1.tar.gz";
    sha256 = "7f5ac20e895c6c5bc4472826b7021cb7e061cefbcbd8906dd9a9fb5b9f64b0cb";
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
