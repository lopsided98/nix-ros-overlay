
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-ffmpeg-image-transport-msgs";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ffmpeg_image_transport_msgs-release/archive/release/humble/ffmpeg_image_transport_msgs/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "31e6414c9f5dca9dcca676062020daa22b47fb70c2d70ef561040e3731d1bee2";
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
