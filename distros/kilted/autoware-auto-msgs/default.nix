
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake-auto, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-autoware-auto-msgs";
  version = "1.0.0-r7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_auto_msgs-release/archive/release/kilted/autoware_auto_msgs/1.0.0-7.tar.gz";
    name = "1.0.0-7.tar.gz";
    sha256 = "8cb11838c5f9d9f610d6b08341046fda00468823ff14d85017b5786dcc31f2b8";
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
