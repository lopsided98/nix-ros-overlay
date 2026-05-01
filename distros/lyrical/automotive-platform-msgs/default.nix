
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-automotive-platform-msgs";
  version = "3.0.4-r7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/automotive_autonomy_msgs-release/archive/release/lyrical/automotive_platform_msgs/3.0.4-7.tar.gz";
    name = "3.0.4-7.tar.gz";
    sha256 = "634837929a2cb37fa01086840638dc299cfb99a5bc845a1e33569bb48c8effcc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Generic Messages for Communication with an Automotive Autonomous Platform";
    license = with lib.licenses; [ mit ];
  };
}
