
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-play-motion2-msgs";
  version = "0.0.7-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/play_motion2-release/archive/release/humble/play_motion2_msgs/0.0.7-1.tar.gz";
    name = "0.0.7-1.tar.gz";
    sha256 = "c29e04d7aeb5b15a2b42cf3f2be001cd1d5f3887c69e9bf1c9a8866dad07b054";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ action-msgs builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Play a pre-recorded motion on a robot'';
    license = with lib.licenses; [ asl20 ];
  };
}
