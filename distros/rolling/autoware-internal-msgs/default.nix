
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, autoware-internal-debug-msgs, autoware-internal-metric-msgs, autoware-internal-perception-msgs, autoware-internal-planning-msgs, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-autoware-internal-msgs";
  version = "1.10.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_internal_msgs-release/archive/release/rolling/autoware_internal_msgs/1.10.0-1.tar.gz";
    name = "1.10.0-1.tar.gz";
    sha256 = "ca9e623f0556676ae3e74c720689e4308e8d00e915d857d7cb885961afa7766b";
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
