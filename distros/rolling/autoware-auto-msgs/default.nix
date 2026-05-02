
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake-auto, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-autoware-auto-msgs";
  version = "1.0.0-r7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_auto_msgs-release/archive/release/rolling/autoware_auto_msgs/1.0.0-7.tar.gz";
    name = "1.0.0-7.tar.gz";
    sha256 = "d6ad327b8c4c138c5ec83b05dfd51bcdf9d251bd97e6e4154d442c777a136919";
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
