
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-orbbec-camera-msgs";
  version = "2.10.6-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/orbbec_camera_v2-release/archive/release/rolling/orbbec_camera_msgs/2.10.6-3.tar.gz";
    name = "2.10.6-3.tar.gz";
    sha256 = "981f64d1af6f456da810b4a7e6b0e6b44dce887174d764de60c8adf7bbf3cc7a";
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
