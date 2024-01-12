
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-iron-rcgcd-spl-14";
  version = "3.0.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gc_spl-release/archive/release/iron/rcgcd_spl_14/3.0.0-4.tar.gz";
    name = "3.0.0-4.tar.gz";
    sha256 = "6f149f78ceb2f8b15217c72f0bab597cc477846a8f1d444d13f4a890cac6dd6d";
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
