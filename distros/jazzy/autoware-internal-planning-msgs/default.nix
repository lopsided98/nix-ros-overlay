
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, autoware-common-msgs, autoware-perception-msgs, autoware-planning-msgs, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-jazzy-autoware-internal-planning-msgs";
  version = "1.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_internal_msgs-release/archive/release/jazzy/autoware_internal_planning_msgs/1.8.1-1.tar.gz";
    name = "1.8.1-1.tar.gz";
    sha256 = "55618a02b1d458fdba3f0108746740357d0ef578cc35df31dab7bb424a67abe7";
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
