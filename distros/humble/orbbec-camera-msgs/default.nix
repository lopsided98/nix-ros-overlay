
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-orbbec-camera-msgs";
  version = "2.6.3-r1";

  src = fetchurl {
    url = "https://github.com/orbbec/orbbec_camera_v2-release/archive/release/humble/orbbec_camera_msgs/2.6.3-1.tar.gz";
    name = "2.6.3-1.tar.gz";
    sha256 = "a9cf16f9f4e4ce6986952d70ab912f8e4024a1f391f8d7c13d8d126608706726";
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
