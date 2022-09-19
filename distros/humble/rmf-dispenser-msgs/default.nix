
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-rmf-dispenser-msgs";
  version = "2.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_internal_msgs-release/archive/release/humble/rmf_dispenser_msgs/2.0.0-2.tar.gz";
    name = "2.0.0-2.tar.gz";
    sha256 = "3f9a274fc9b09698678d473ca674445f4d46f417c9b3d991ff3be3f762dc4476";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''A package containing messages used to interface to dispenser workcells'';
    license = with lib.licenses; [ asl20 ];
  };
}
