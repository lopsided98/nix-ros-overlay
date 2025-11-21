
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-orbbec-camera-msgs";
  version = "2.5.5-r2";

  src = fetchurl {
    url = "https://github.com/orbbec/orbbec_camera_v2-release/archive/release/humble/orbbec_camera_msgs/2.5.5-2.tar.gz";
    name = "2.5.5-2.tar.gz";
    sha256 = "a45681d7fa39fd85b0f764a26f96d5a3bc3e17bc09f4f8024932be9f1a03d135";
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
