
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-core-generators, rosidl-core-runtime, service-msgs }:
buildRosPackage {
  pname = "ros-rolling-type-description-interfaces";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/rolling/type_description_interfaces/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "a501b2fe9c9172fe7baf54aedc397467b591cb3a4a37333bcdb2ede838891a98";
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
