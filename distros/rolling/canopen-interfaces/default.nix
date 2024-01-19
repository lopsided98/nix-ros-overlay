
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-canopen-interfaces";
  version = "0.2.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/rolling/canopen_interfaces/0.2.7-1.tar.gz";
    name = "0.2.7-1.tar.gz";
    sha256 = "6fe32739d33aa3840c1a97ee3a62bd97be05e3fdd3f61f3a94dc6516b3f907cd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Services and Messages for ros2_canopen stack'';
    license = with lib.licenses; [ asl20 ];
  };
}
