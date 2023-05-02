
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-lifecycle-msgs";
  version = "1.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/rolling/lifecycle_msgs/1.7.0-1.tar.gz";
    name = "1.7.0-1.tar.gz";
    sha256 = "5060ba7dd9bc78bc17a26c112c7c3e9e51bb949f402cfd51be69e7a1d03e8509";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''A package containing some lifecycle related message and service definitions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
