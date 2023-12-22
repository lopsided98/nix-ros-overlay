
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-play-motion2-msgs";
  version = "0.0.13-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/play_motion2-release/archive/release/humble/play_motion2_msgs/0.0.13-1.tar.gz";
    name = "0.0.13-1.tar.gz";
    sha256 = "6e310a1f0c9221011b0ec5153afc795a9a46127d67f970a10b2d8b149e0e7aa6";
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
