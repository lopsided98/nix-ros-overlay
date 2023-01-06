
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-automotive-platform-msgs";
  version = "3.0.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/automotive_autonomy_msgs-release/archive/release/rolling/automotive_platform_msgs/3.0.4-2.tar.gz";
    name = "3.0.4-2.tar.gz";
    sha256 = "7662bb783a45fca05f11629283a3895403d8de9302b526b010d169479e496d47";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Generic Messages for Communication with an Automotive Autonomous Platform'';
    license = with lib.licenses; [ mit ];
  };
}
