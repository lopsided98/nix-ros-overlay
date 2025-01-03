
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake-auto, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-autoware-auto-msgs";
  version = "1.0.0-r7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_auto_msgs-release/archive/release/jazzy/autoware_auto_msgs/1.0.0-7.tar.gz";
    name = "1.0.0-7.tar.gz";
    sha256 = "26f0491e718f1c381bd68424f67db77841efbe23ecf9b46ee27e24a892d683f7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ action-msgs geometry-msgs rosidl-default-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = "Interfaces between core Autoware.Auto components";
    license = with lib.licenses; [ asl20 ];
  };
}
