
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-iron-gc-spl-interfaces";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gc_spl-release/archive/release/iron/gc_spl_interfaces/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "0717655b96382d0fb309661f25d9410cf98ea71bb4bf511a184700a77fa89559";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''RoboCup SPL GameController Data ROS msg'';
    license = with lib.licenses; [ asl20 ];
  };
}
