
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-automotive-platform-msgs";
  version = "3.0.4-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/automotive_autonomy_msgs-release/archive/release/jazzy/automotive_platform_msgs/3.0.4-6.tar.gz";
    name = "3.0.4-6.tar.gz";
    sha256 = "c86c58817210e0bd956ae6f79059677585c1671a0d4b8149180ed74b8ba30d86";
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
