
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-automotive-navigation-msgs";
  version = "3.0.4-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/automotive_autonomy_msgs-release/archive/release/kilted/automotive_navigation_msgs/3.0.4-6.tar.gz";
    name = "3.0.4-6.tar.gz";
    sha256 = "4a154998e1dd82a874f35e85e7b981f5a64f3d3175da837638d33421145526a5";
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
