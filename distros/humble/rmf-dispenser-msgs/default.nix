
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-rmf-dispenser-msgs";
  version = "3.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_internal_msgs-release/archive/release/humble/rmf_dispenser_msgs/3.0.2-1.tar.gz";
    name = "3.0.2-1.tar.gz";
    sha256 = "c2c325a2e5a9fd32db6ffa2db288f50a352eb89acb680a5e6fb1a19450e1c28c";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''A package containing messages used to interface to dispenser workcells'';
    license = with lib.licenses; [ asl20 ];
  };
}
