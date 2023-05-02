
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-foxy-rcgcrd-spl-4";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gc_spl-release/archive/release/foxy/rcgcrd_spl_4/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "c787dad62a29c9f8b536db699b2e5a1834d177a6e7f79b82ae7eeb2ad5f753bf";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''RoboCup SPL GameController Return Data V4 ROS msg'';
    license = with lib.licenses; [ asl20 ];
  };
}
