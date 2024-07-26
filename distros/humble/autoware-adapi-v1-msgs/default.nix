
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, builtin-interfaces, geographic-msgs, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, shape-msgs, std-msgs, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-humble-autoware-adapi-v1-msgs";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_adapi_msgs-release/archive/release/humble/autoware_adapi_v1_msgs/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "a9952913d62146d2c2bf3f16dc4baa0a1e05d62cd7b1b3917ce893e4465166dc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geographic-msgs geometry-msgs rosidl-default-runtime shape-msgs std-msgs unique-identifier-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The Autoware AD API interfaces";
    license = with lib.licenses; [ asl20 ];
  };
}
