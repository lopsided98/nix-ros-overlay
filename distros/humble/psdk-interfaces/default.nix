
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-psdk-interfaces";
  version = "0.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/psdk_ros2-release/archive/release/humble/psdk_interfaces/0.0.5-1.tar.gz";
    name = "0.0.5-1.tar.gz";
    sha256 = "70b4146d19b9a48951ddada7fb02a2286b9cb2ac404b364a89fded553884bb9e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Provides custom message, srv and action types for psdk ros2 wrapper'';
    license = with lib.licenses; [ "MPL" ];
  };
}
