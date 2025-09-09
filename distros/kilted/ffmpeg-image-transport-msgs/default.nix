
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-ffmpeg-image-transport-msgs";
  version = "1.0.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ffmpeg_image_transport_msgs-release/archive/release/kilted/ffmpeg_image_transport_msgs/1.0.2-3.tar.gz";
    name = "1.0.2-3.tar.gz";
    sha256 = "6c6ca55d0db6897a423937e9784c32968d0c52d3298bc3d7ecf01ab75a7573ba";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "messages for ffmpeg image transport plugin";
    license = with lib.licenses; [ "Apache-2" ];
  };
}
