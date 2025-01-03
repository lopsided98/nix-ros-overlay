
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-rmf-fleet-msgs";
  version = "3.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_internal_msgs-release/archive/release/rolling/rmf_fleet_msgs/3.4.1-1.tar.gz";
    name = "3.4.1-1.tar.gz";
    sha256 = "52c7a4a3fc17d49d8ee9816a6e7b5f3de5d2473b3b5a33182604f659c9c09206";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "A package containing messages used to interface to fleet managers";
    license = with lib.licenses; [ asl20 ];
  };
}
