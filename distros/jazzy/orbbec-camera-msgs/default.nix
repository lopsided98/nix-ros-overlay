
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-orbbec-camera-msgs";
  version = "1.5.14-r1";

  src = fetchurl {
    url = "https://github.com/orbbec/orbbec_camera_v1-release/archive/release/jazzy/orbbec_camera_msgs/1.5.14-1.tar.gz";
    name = "1.5.14-1.tar.gz";
    sha256 = "ca1d057ae829a9d85dee3049c985c9c29d6ad75af1c3d001b42713f04165ead2";
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
