
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs, vision-msgs }:
buildRosPackage {
  pname = "ros-foxy-webots-ros2-msgs";
  version = "2023.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/foxy/webots_ros2_msgs/2023.0.0-2.tar.gz";
    name = "2023.0.0-2.tar.gz";
    sha256 = "62c6f2186a03cc4f54540bda5a52e835fba7632f8b0d56c73c01f507ebfa91cc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs vision-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Services and Messages of the webots_ros2 packages.'';
    license = with lib.licenses; [ asl20 ];
  };
}
