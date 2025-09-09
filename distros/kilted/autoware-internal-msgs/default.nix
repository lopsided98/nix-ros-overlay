
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, autoware-internal-debug-msgs, autoware-internal-metric-msgs, autoware-internal-perception-msgs, autoware-internal-planning-msgs, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-autoware-internal-msgs";
  version = "1.8.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_internal_msgs-release/archive/release/kilted/autoware_internal_msgs/1.8.1-3.tar.gz";
    name = "1.8.1-3.tar.gz";
    sha256 = "6e15881bd1c6ee85f3bc3a7b7dd531ee011bcd8261f5c4a21677e2e8d735c91a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ autoware-internal-debug-msgs autoware-internal-metric-msgs autoware-internal-perception-msgs autoware-internal-planning-msgs builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake-auto rosidl-default-generators ];

  meta = {
    description = "Autoware internal messages package.";
    license = with lib.licenses; [ asl20 ];
  };
}
