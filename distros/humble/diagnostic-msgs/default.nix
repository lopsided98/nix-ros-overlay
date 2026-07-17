
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-diagnostic-msgs";
  version = "4.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/humble/diagnostic_msgs/4.9.2-1.tar.gz";
    name = "4.9.2-1.tar.gz";
    sha256 = "39b8835ccde716e7aed72b1aad08fb1d4fa85aaea5ba62a58f12d936b32e631a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "A package containing some diagnostics related message and service definitions.";
    license = with lib.licenses; [ asl20 ];
  };
}
