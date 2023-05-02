
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rmf-dispenser-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-rmf-ingestor-msgs";
  version = "3.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_internal_msgs-release/archive/release/rolling/rmf_ingestor_msgs/3.0.2-2.tar.gz";
    name = "3.0.2-2.tar.gz";
    sha256 = "28497404c4338222cf3cb2372b119d8c9bdffa88b46d78923070fffc07bbaf31";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rmf-dispenser-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''A package containing messages used to interface to ingestor workcells'';
    license = with lib.licenses; [ asl20 ];
  };
}
