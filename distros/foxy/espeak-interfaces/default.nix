
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-espeak-interfaces";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://gitlab.com/espeak-ros2/espeak-ros2-release/-/archive/release/foxy/espeak_interfaces/1.0.0-1/espeak-ros2-release-release-foxy-espeak_interfaces-1.0.0-1.tar.gz";
    name = "espeak-ros2-release-release-foxy-espeak_interfaces-1.0.0-1.tar.gz";
    sha256 = "9fac62992b1ae3f6de3aded1216811a042f6a0389e8764fc8666bb8a9248e3fb";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Messages for the `espeak-ros` package.'';
    license = with lib.licenses; [ mit ];
  };
}
