
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-iron-rcgcrd-spl-4";
  version = "3.0.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gc_spl-release/archive/release/iron/rcgcrd_spl_4/3.0.0-4.tar.gz";
    name = "3.0.0-4.tar.gz";
    sha256 = "0d418e6395b89e92109475be0c2f0767beeccf7b70069b77ba736aab1f2c4707";
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
