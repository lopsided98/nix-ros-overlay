
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-rcgcd-spl-14";
  version = "3.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gc_spl-release/archive/release/rolling/rcgcd_spl_14/3.0.0-3.tar.gz";
    name = "3.0.0-3.tar.gz";
    sha256 = "1a4ba6e1449d420916c9a11919bc4eb4df080b3250924b40d4b2054292b76420";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''RoboCup SPL GameController Data V14 ROS msg'';
    license = with lib.licenses; [ asl20 ];
  };
}
