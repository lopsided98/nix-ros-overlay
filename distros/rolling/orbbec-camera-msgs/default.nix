
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-orbbec-camera-msgs";
  version = "2.10.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/orbbec_camera_v2-release/archive/release/rolling/orbbec_camera_msgs/2.10.7-1.tar.gz";
    name = "2.10.7-1.tar.gz";
    sha256 = "ffd8a1817b59ffdcc7714ffee0be25b1b5c85fa310735ec35fe1ee665bb3582b";
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
