
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake-auto, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-autoware-auto-msgs";
  version = "1.0.0-r8";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_auto_msgs-release/archive/release/lyrical/autoware_auto_msgs/1.0.0-8.tar.gz";
    name = "1.0.0-8.tar.gz";
    sha256 = "361454e0e6ac65d02e67ba58ef967922a7222751b3f95b677e81249d1a8280f0";
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
