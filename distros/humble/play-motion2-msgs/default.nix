
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-play-motion2-msgs";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/play_motion2-release/archive/release/humble/play_motion2_msgs/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "e3cfab18b795c5bcce356419df453900442704b4bc5d646154c8d30b8e009eff";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ action-msgs builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Play a pre-recorded motion on a robot";
    license = with lib.licenses; [ asl20 ];
  };
}
