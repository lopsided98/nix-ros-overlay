
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-ffmpeg-image-transport-msgs";
  version = "1.0.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ffmpeg_image_transport_msgs-release/archive/release/lyrical/ffmpeg_image_transport_msgs/1.0.2-4.tar.gz";
    name = "1.0.2-4.tar.gz";
    sha256 = "c9a17d87b5abe8c87b5182a207708205159bd3a0261ce568bd6467d31aa9ad55";
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
