
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-core-generators, rosidl-core-runtime, service-msgs }:
buildRosPackage {
  pname = "ros-rolling-type-description-interfaces";
  version = "2.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/rolling/type_description_interfaces/2.4.0-1.tar.gz";
    name = "2.4.0-1.tar.gz";
    sha256 = "ec3a8e4b3a4a68d38e99a7fc9c4042145fdc1b684e664d9c10fb4d3ad75d36f3";
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
