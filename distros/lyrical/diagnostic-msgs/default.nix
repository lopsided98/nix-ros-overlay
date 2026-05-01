
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-diagnostic-msgs";
  version = "5.9.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/lyrical/diagnostic_msgs/5.9.2-3.tar.gz";
    name = "5.9.2-3.tar.gz";
    sha256 = "998134728f1f9209703904f0ad97fcb37f770f09c4c15a03a46abb2eb41e5b64";
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
