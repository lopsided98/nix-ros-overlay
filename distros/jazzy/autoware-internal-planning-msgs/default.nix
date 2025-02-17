
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, autoware-perception-msgs, autoware-planning-msgs, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-jazzy-autoware-internal-planning-msgs";
  version = "1.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_internal_msgs-release/archive/release/jazzy/autoware_internal_planning_msgs/1.5.0-2.tar.gz";
    name = "1.5.0-2.tar.gz";
    sha256 = "6f3d73c10813a7036d1d2bf80318f088b9e801e74fbfe24eaafc566c13682bd2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ autoware-perception-msgs autoware-planning-msgs builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs unique-identifier-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "The autoware_internal_planning_msgs package";
    license = with lib.licenses; [ asl20 ];
  };
}
