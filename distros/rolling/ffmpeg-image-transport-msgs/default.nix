
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-ffmpeg-image-transport-msgs";
  version = "1.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ffmpeg_image_transport_msgs-release/archive/release/rolling/ffmpeg_image_transport_msgs/1.0.2-2.tar.gz";
    name = "1.0.2-2.tar.gz";
    sha256 = "2a4072683f7347638fa93f43d3c3fd3115824cb9f90ad49db62493dae71f3b04";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''messages for ffmpeg image transport plugin'';
    license = with lib.licenses; [ "Apache-2" ];
  };
}
