
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rmf-dispenser-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-rmf-ingestor-msgs";
  version = "3.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_internal_msgs-release/archive/release/jazzy/rmf_ingestor_msgs/3.3.1-1.tar.gz";
    name = "3.3.1-1.tar.gz";
    sha256 = "98484ed3533c9e426005153897bfcbc3b3099f0adf6b31b40a0aea6865504264";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rmf-dispenser-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "A package containing messages used to interface to ingestor workcells";
    license = with lib.licenses; [ asl20 ];
  };
}
