
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-iron-ffmpeg-image-transport-msgs";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ffmpeg_image_transport_msgs-release/archive/release/iron/ffmpeg_image_transport_msgs/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "080860b02ae1152fab379aa88708eaccda9cea9e6125f520b824179b7df3eae5";
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
