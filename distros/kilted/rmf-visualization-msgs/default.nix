
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-kilted-rmf-visualization-msgs";
  version = "1.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_visualization_msgs-release/archive/release/kilted/rmf_visualization_msgs/1.5.0-2.tar.gz";
    name = "1.5.0-2.tar.gz";
    sha256 = "2e3a3e935896712a822688b8fa0c555dab3675cda05a303c9c35bdc2765bc39f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "A package containing messages used for visualizations";
    license = with lib.licenses; [ asl20 ];
  };
}
