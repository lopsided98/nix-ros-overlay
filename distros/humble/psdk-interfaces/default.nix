
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-psdk-interfaces";
  version = "1.2.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/psdk_ros2-release/archive/release/humble/psdk_interfaces/1.2.0-4.tar.gz";
    name = "1.2.0-4.tar.gz";
    sha256 = "92d5b74cd0e1433047ff720734193981515dcc1643729bdda7b6bd9dbec4d7ec";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Provides custom message, srv and action types for psdk ros2 wrapper";
    license = with lib.licenses; [ "MPL" ];
  };
}
