
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-core-generators, rosidl-core-runtime, service-msgs }:
buildRosPackage {
  pname = "ros-rolling-type-description-interfaces";
  version = "1.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/rolling/type_description_interfaces/1.7.0-1.tar.gz";
    name = "1.7.0-1.tar.gz";
    sha256 = "ce4231326964780f5ec25e9d7633270eccc7d30c6edeae6642ea2f5c6a05231a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-core-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-core-runtime service-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-core-generators ];

  meta = {
    description = ''A package containing message and service definitions for describing and communicating descriptions of other types.'';
    license = with lib.licenses; [ asl20 ];
  };
}
