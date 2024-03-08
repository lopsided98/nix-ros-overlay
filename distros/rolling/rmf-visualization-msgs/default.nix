
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-rmf-visualization-msgs";
  version = "1.4.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_visualization_msgs-release/archive/release/rolling/rmf_visualization_msgs/1.4.0-2.tar.gz";
    name = "1.4.0-2.tar.gz";
    sha256 = "6e1c6083920cbd879f5d063e537873f02c4cfe9cfd8af9f2b0ee343b763f93c3";
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
