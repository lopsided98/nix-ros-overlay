
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-foxy-rcgcd-spl-14";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gc_spl-release/archive/release/foxy/rcgcd_spl_14/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "83e8aaf6e0f29ef91261e5ba11996ceae30ba80eab29065b00969a76d0245efa";
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
