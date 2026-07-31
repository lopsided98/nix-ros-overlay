
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, nav-msgs, rosidl-default-generators, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-easynav-interfaces";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/EasyNavigation-release/archive/release/kilted/easynav_interfaces/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "e5f4ff58ee5928128512f626255f1bc0e6798b502374d8e4e72eed39f3efb13c";
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
