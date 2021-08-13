
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-espeak-interfaces";
  version = "0.1.0-r6";

  src = fetchurl {
    url = "https://gitlab.com/espeak-ros2/espeak-ros2-release/-/archive/release/foxy/espeak_interfaces/0.1.0-6/espeak-ros2-release-release-foxy-espeak_interfaces-0.1.0-6.tar.gz";
    name = "espeak-ros2-release-release-foxy-espeak_interfaces-0.1.0-6.tar.gz";
    sha256 = "aa16feb6e81655747a0d031860ace96e3622d84daac6685e98015e23b21860d6";
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
