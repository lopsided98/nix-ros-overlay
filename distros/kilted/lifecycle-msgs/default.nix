
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-kilted-lifecycle-msgs";
  version = "2.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcl_interfaces-release/archive/release/kilted/lifecycle_msgs/2.3.2-1.tar.gz";
    name = "2.3.2-1.tar.gz";
    sha256 = "f0a9e5c991a9c5e9fae93eda55ee826c11c95ef09276872d8317880571bfaed3";
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
