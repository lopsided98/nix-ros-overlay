
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, builtin-interfaces, geographic-msgs, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, shape-msgs, std-msgs, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-lyrical-autoware-adapi-v1-msgs";
  version = "1.9.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_adapi_msgs-release/archive/release/lyrical/autoware_adapi_v1_msgs/1.9.0-4.tar.gz";
    name = "1.9.0-4.tar.gz";
    sha256 = "169881657c07845a305da6a01c0f6c24c9cf4ad2ffae81458ec0f62b120e17c1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geographic-msgs geometry-msgs rosidl-default-runtime shape-msgs std-msgs unique-identifier-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The Autoware AD API interfaces";
    license = with lib.licenses; [ asl20 ];
  };
}
