
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-speech-recognition-msgs";
  version = "5.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/jsk_common_msgs-release/archive/release/rolling/speech_recognition_msgs/5.0.2-1.tar.gz";
    name = "5.0.2-1.tar.gz";
    sha256 = "bb4daab064587540517c48c732b880f26c5c80d090f03e2499ea289b831f0b93";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "speech_recognition_msgs";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
