
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, autoware-internal-debug-msgs, autoware-internal-metric-msgs, autoware-internal-perception-msgs, autoware-internal-planning-msgs, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-autoware-internal-msgs";
  version = "1.10.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_internal_msgs-release/archive/release/humble/autoware_internal_msgs/1.10.0-1.tar.gz";
    name = "1.10.0-1.tar.gz";
    sha256 = "88a7bbe52f2ea5dca165b5d607d48c58200584b528d7188673649aa6293ef0cc";
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
