
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, autoware-common-msgs, autoware-perception-msgs, autoware-planning-msgs, autoware-vehicle-msgs, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-lyrical-autoware-internal-planning-msgs";
  version = "1.16.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_internal_msgs-release/archive/release/lyrical/autoware_internal_planning_msgs/1.16.0-1.tar.gz";
    name = "1.16.0-1.tar.gz";
    sha256 = "62cf4b7d4c4e24a3d5d33f65fa8fd2269b75259b6c3e4d1dcc3ec68a379808d1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ autoware-common-msgs autoware-perception-msgs autoware-planning-msgs autoware-vehicle-msgs builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs unique-identifier-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The autoware_internal_planning_msgs package";
    license = with lib.licenses; [ asl20 ];
  };
}
