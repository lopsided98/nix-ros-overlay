
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, autoware-internal-debug-msgs, autoware-internal-metric-msgs, autoware-internal-perception-msgs, autoware-internal-planning-msgs, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-autoware-internal-msgs";
  version = "1.12.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_internal_msgs-release/archive/release/lyrical/autoware_internal_msgs/1.12.1-3.tar.gz";
    name = "1.12.1-3.tar.gz";
    sha256 = "4b2f1b946d2d0560cdc1f2b102a3365898cb803ec640df53624f68e03d183c71";
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
