
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-rmf-dispenser-msgs";
  version = "3.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_internal_msgs-release/archive/release/jazzy/rmf_dispenser_msgs/3.3.1-1.tar.gz";
    name = "3.3.1-1.tar.gz";
    sha256 = "86784aa6a92d09700adfbc4e4f68a2744d0c880c17d7e579c763153eb4f3ef7d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "A package containing messages used to interface to dispenser workcells";
    license = with lib.licenses; [ asl20 ];
  };
}
