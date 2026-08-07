
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-speech-recognition-msgs";
  version = "5.0.1-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common_msgs-release/archive/release/lyrical/speech_recognition_msgs/5.0.1-2.tar.gz";
    name = "5.0.1-2.tar.gz";
    sha256 = "c366b4411b7abed5e574fffa49b7cb3b7077f407aa149bfd8872fb9e57585601";
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
