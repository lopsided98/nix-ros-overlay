
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-autoware-v2x-msgs";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_msgs-release/archive/release/humble/autoware_v2x_msgs/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "e593d3d41761aba41892f42e9670c7028210134c16f8a366ba6076549f6f899a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Autoware v2x messages package.";
    license = with lib.licenses; [ asl20 ];
  };
}
