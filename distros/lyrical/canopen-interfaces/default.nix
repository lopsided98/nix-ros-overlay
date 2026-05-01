
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-lyrical-canopen-interfaces";
  version = "0.3.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/lyrical/canopen_interfaces/0.3.2-3.tar.gz";
    name = "0.3.2-3.tar.gz";
    sha256 = "89d1f191db36a71e4451cd5b78bdd916ffbb5cef4d85fe1ecaac6372f1040ffb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Services and Messages for ros2_canopen stack";
    license = with lib.licenses; [ asl20 ];
  };
}
