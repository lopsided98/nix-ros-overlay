
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-automotive-platform-msgs";
  version = "3.0.4-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/automotive_autonomy_msgs-release/archive/release/rolling/automotive_platform_msgs/3.0.4-5.tar.gz";
    name = "3.0.4-5.tar.gz";
    sha256 = "5b85b92bdc93e768c20f4e9864ce34c43e546a64e8fb472b57922fa8f077d2a4";
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
