
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-visualization-msgs";
  version = "5.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/rolling/visualization_msgs/5.3.1-1.tar.gz";
    name = "5.3.1-1.tar.gz";
    sha256 = "22d1a13b3d6109849fe806a4b0b5d6d05d8918b2a61d23ccc6008691f7c2d0c0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "A package containing some visualization and interaction related message definitions.";
    license = with lib.licenses; [ asl20 ];
  };
}
