
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-wrapyfi-ros2-interfaces";
  version = "0.4.30-r1";

  src = fetchurl {
    url = "https://github.com/modular-ml/wrapyfi_ros2_interfaces-release/archive/release/humble/wrapyfi_ros2_interfaces/0.4.30-1.tar.gz";
    name = "0.4.30-1.tar.gz";
    sha256 = "62245dbeb9daee9204e0c3d1e304dceb79e466398bed2f64728607ebaf1a2570";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapyfi ROS 2 interfaces'';
    license = with lib.licenses; [ mit ];
  };
}
