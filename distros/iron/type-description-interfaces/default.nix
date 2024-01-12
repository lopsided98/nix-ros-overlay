
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-core-generators, rosidl-core-runtime, service-msgs }:
buildRosPackage {
  pname = "ros-iron-type-description-interfaces";
  version = "1.6.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/iron/type_description_interfaces/1.6.0-2.tar.gz";
    name = "1.6.0-2.tar.gz";
    sha256 = "a87ad88363ddc4ada6c54e597464dcceadd7a09ff4e9632e8f4c3083273ae5c0";
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
