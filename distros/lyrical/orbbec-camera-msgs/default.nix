
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-orbbec-camera-msgs";
  version = "2.10.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/orbbec_camera_v2-release/archive/release/lyrical/orbbec_camera_msgs/2.10.7-1.tar.gz";
    name = "2.10.7-1.tar.gz";
    sha256 = "79077c1c4a9ec41e82ac5c6827bc130792d5160f36dd88edef8fb8fdf4d3645c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators std-msgs ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ action-msgs rosidl-default-runtime sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A package containing orbbec camera messages definitions.";
    license = with lib.licenses; [ asl20 ];
  };
}
