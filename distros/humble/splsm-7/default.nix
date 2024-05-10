
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-splsm-7";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/r2r_spl-release/archive/release/humble/splsm_7/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "fb6709ece4cc301f4989bca4eb084f89a418caf67ce1297a5a7907993ee2d86f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "RoboCup Standard Platform League Standard Message V7 ROS msg";
    license = with lib.licenses; [ asl20 ];
  };
}
