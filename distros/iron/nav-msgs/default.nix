
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-iron-nav-msgs";
  version = "5.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/common_interfaces-release/archive/release/iron/nav_msgs/5.0.0-2.tar.gz";
    name = "5.0.0-2.tar.gz";
    sha256 = "485f95819b2863c000c9a8be593516eac35332a78f44933ab111809fbc1bac54";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''A package containing some navigation related message and service definitions.'';
    license = with lib.licenses; [ asl20 ];
  };
}
