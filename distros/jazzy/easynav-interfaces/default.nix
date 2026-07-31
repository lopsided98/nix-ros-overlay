
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, nav-msgs, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-easynav-interfaces";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/EasyNavigation-release/archive/release/jazzy/easynav_interfaces/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "cd4b50d431fd128fc7bc4aa729e5ecc8ae92bd7899d3523b3b0aa4bd66484c47";
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
