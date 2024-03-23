
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-core-generators, rosidl-core-runtime, service-msgs }:
buildRosPackage {
  pname = "ros-rolling-type-description-interfaces";
  version = "2.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/rolling/type_description_interfaces/2.0.1-2.tar.gz";
    name = "2.0.1-2.tar.gz";
    sha256 = "a3051631864894d634f4c3dfd7d07b0212a7edb052d55903c24b44aea9de9389";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-core-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-core-runtime service-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-core-generators ];

  meta = {
    description = "A package containing message and service definitions for describing and communicating descriptions of other types.";
    license = with lib.licenses; [ asl20 ];
  };
}
