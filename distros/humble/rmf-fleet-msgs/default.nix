
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-rmf-fleet-msgs";
  version = "2.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_internal_msgs-release/archive/release/humble/rmf_fleet_msgs/2.0.0-2.tar.gz";
    name = "2.0.0-2.tar.gz";
    sha256 = "d40d71419cb6ef75990cfce9ec3f504a777292c27d303d944d9023b0af3545d9";
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
