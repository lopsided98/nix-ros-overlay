
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, nav-msgs, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-humble-easynav-interfaces";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/EasyNavigation-release/archive/release/humble/easynav_interfaces/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "ea976b4c298a46b5adb3b14b83c8a775e423cc42561ca9ccaa3032ca7dcce9f9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs nav-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Easy Navigation: Message, Service, and Action definitions.";
    license = with lib.licenses; [ asl20 ];
  };
}
