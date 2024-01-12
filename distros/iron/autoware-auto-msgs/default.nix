
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake-auto, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-iron-autoware-auto-msgs";
  version = "1.0.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_auto_msgs-release/archive/release/iron/autoware_auto_msgs/1.0.0-6.tar.gz";
    name = "1.0.0-6.tar.gz";
    sha256 = "c5d4a358590c2626d449bcc2b93ccbaed77438b2349504577b37ca6109aac1d2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ action-msgs geometry-msgs rosidl-default-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''Interfaces between core Autoware.Auto components'';
    license = with lib.licenses; [ asl20 ];
  };
}
