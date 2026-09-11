
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, ros-environment, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-speech-recognition-msgs";
  version = "5.0.2-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common_msgs-release/archive/release/kilted/speech_recognition_msgs/5.0.2-1.tar.gz";
    name = "5.0.2-1.tar.gz";
    sha256 = "0612636504373f57c8e81d8b5473013ac1902c65cb6c276efe836b7943ad2f97";
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
