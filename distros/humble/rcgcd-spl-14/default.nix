
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-rcgcd-spl-14";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gc_spl-release/archive/release/humble/rcgcd_spl_14/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "a15dc993030f80c4b4d009d9506fb16bee35b40e39e2199204eb9cd253238d1f";
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
