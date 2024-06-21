
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-psdk-interfaces";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/psdk_ros2-release/archive/release/humble/psdk_interfaces/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "1491479b9d962b6277c8820ae17b4bd7ce49b5759ead9d50143abf8b00b29ef4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ action-msgs geometry-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Provides custom message, srv and action types for psdk ros2 wrapper";
    license = with lib.licenses; [ "MPL" ];
  };
}
