
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, autoware-perception-msgs, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-autoware-internal-perception-msgs";
  version = "1.12.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_internal_msgs-release/archive/release/lyrical/autoware_internal_perception_msgs/1.12.1-3.tar.gz";
    name = "1.12.1-3.tar.gz";
    sha256 = "b3a18f2cf75b88c465a49be57474cce74f5dd2a66560e6b090e12529b5fc8d3c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ autoware-perception-msgs builtin-interfaces rosidl-default-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake-auto rosidl-default-generators ];

  meta = {
    description = "Autoware internal perception messages package.";
    license = with lib.licenses; [ asl20 ];
  };
}
