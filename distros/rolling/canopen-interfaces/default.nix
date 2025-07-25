
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-canopen-interfaces";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/rolling/canopen_interfaces/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "081bae619bbf24800f985281dc4229bc2eff91743e370845bae918775a11c504";
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
