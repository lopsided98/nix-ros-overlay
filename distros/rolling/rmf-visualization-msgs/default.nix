
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-rmf-visualization-msgs";
  version = "1.2.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_visualization_msgs-release/archive/release/rolling/rmf_visualization_msgs/1.2.0-4.tar.gz";
    name = "1.2.0-4.tar.gz";
    sha256 = "0826ed486c4eec020d1876027cae360e850b8f13acf7888814e9c54a717c4a71";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''A package containing messages used for visualizations'';
    license = with lib.licenses; [ asl20 ];
  };
}
