
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-orbbec-camera-msgs";
  version = "2.10.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/orbbec_camera_v2-release/archive/release/humble/orbbec_camera_msgs/2.10.7-1.tar.gz";
    name = "2.10.7-1.tar.gz";
    sha256 = "8d44cf266d46e6bd657a964629e486a16df1e011b8c622b404b8022465c5b6a7";
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
