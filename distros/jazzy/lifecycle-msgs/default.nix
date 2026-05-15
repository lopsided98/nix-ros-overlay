
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-lifecycle-msgs";
  version = "2.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/jazzy/lifecycle_msgs/2.0.4-1.tar.gz";
    name = "2.0.4-1.tar.gz";
    sha256 = "5b76a2e9cf54a37c3b966c7c9dd6e0526d8e32e69bde6915159d42ffa24d73f4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "A package containing some lifecycle related message and service definitions.";
    license = with lib.licenses; [ asl20 ];
  };
}
