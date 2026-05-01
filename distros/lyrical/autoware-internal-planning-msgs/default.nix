
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, autoware-common-msgs, autoware-perception-msgs, autoware-planning-msgs, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-lyrical-autoware-internal-planning-msgs";
  version = "1.12.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_internal_msgs-release/archive/release/lyrical/autoware_internal_planning_msgs/1.12.1-3.tar.gz";
    name = "1.12.1-3.tar.gz";
    sha256 = "4a741b801c63d5c08a713db80b80ada294341d1ee66ee8ad12d1c07ec0760226";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ autoware-common-msgs autoware-perception-msgs autoware-planning-msgs builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs unique-identifier-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The autoware_internal_planning_msgs package";
    license = with lib.licenses; [ asl20 ];
  };
}
