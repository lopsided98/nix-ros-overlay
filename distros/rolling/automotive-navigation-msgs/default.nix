
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-automotive-navigation-msgs";
  version = "3.0.4-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/automotive_autonomy_msgs-release/archive/release/rolling/automotive_navigation_msgs/3.0.4-5.tar.gz";
    name = "3.0.4-5.tar.gz";
    sha256 = "76e07db76c931d50ba89fb10b9bbc28782d28961ca6bdaf069ad4b90c86ffe97";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Generic Messages for Navigation Objectives in Automotive Automation Software";
    license = with lib.licenses; [ mit ];
  };
}
