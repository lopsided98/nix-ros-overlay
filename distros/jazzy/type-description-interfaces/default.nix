
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-core-generators, rosidl-core-runtime, service-msgs }:
buildRosPackage {
  pname = "ros-jazzy-type-description-interfaces";
  version = "2.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/jazzy/type_description_interfaces/2.0.4-1.tar.gz";
    name = "2.0.4-1.tar.gz";
    sha256 = "29c5d7f36c575efd3b8ed6609a4686dfa94841b4a70834c6cc89e98d19363512";
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
