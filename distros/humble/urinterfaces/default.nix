
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-urinterfaces";
  version = "7.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urinterfaces-release/archive/release/humble/urinterfaces/7.0.0-1.tar.gz";
    name = "7.0.0-1.tar.gz";
    sha256 = "e832a42b56930e03b2bf98a87e5bb7407c236a4eb5bd01b66933ae0b67ed9033";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ action-msgs builtin-interfaces geometry-msgs rosidl-default-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "A package containing ROS2 ur message definitions.";
    license = with lib.licenses; [ bsd3 ];
  };
}
