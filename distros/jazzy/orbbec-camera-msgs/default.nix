
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-orbbec-camera-msgs";
  version = "2.6.3-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/orbbec_camera_v2-release/archive/release/jazzy/orbbec_camera_msgs/2.6.3-5.tar.gz";
    name = "2.6.3-5.tar.gz";
    sha256 = "29b76cc1beba32f0e2689cdc68a0fda8682228bf1ee432588f52e43b9c0f19a3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators std-msgs ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A package containing orbbec camera messages definitions.";
    license = with lib.licenses; [ asl20 ];
  };
}
