
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-orbbec-camera-msgs";
  version = "2.6.3-r1";

  src = fetchurl {
    url = "https://github.com/orbbec/orbbec_camera_v2-release/archive/release/jazzy/orbbec_camera_msgs/2.6.3-1.tar.gz";
    name = "2.6.3-1.tar.gz";
    sha256 = "910eef42f9f215ae590cb6f9b557def198a2ea41a5cdd83d674d13ab3bbf22f8";
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
