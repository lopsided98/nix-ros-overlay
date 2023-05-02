
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-foxy-rcgcd-spl-14";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gc_spl-release/archive/release/foxy/rcgcd_spl_14/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "af7bf2824fd7dc3c38214ec02cee7d00b469c2b1c45c6cc82485bf840ad882f8";
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
