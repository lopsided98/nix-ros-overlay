
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-rmf-fleet-msgs";
  version = "3.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_internal_msgs-release/archive/release/rolling/rmf_fleet_msgs/3.0.2-2.tar.gz";
    name = "3.0.2-2.tar.gz";
    sha256 = "f9220641294ffaad5ba3dea512e0e3c4bb27eef13decbd401bfb6b6ee925feeb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''A package containing messages used to interface to fleet managers'';
    license = with lib.licenses; [ asl20 ];
  };
}
