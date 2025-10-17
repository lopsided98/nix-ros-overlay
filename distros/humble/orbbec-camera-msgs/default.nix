
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-orbbec-camera-msgs";
  version = "1.5.14-r1";

  src = fetchurl {
    url = "https://github.com/orbbec/orbbec_camera_v1-release/archive/release/humble/orbbec_camera_msgs/1.5.14-1.tar.gz";
    name = "1.5.14-1.tar.gz";
    sha256 = "69785d5b656c65c924291c080614d9070c8b3a68372f7b9af4f41d7a93ee7764";
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
