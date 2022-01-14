
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-clober-msgs";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/CLOBOT-Co-Ltd-release/clober_msgs_ros2-release/archive/release/foxy/clober_msgs/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "088b6721979a1418cbaba4d28160b1002e94f21bfc4cc92f9414d58ce04ae45b";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''clober robot standard messages'';
    license = with lib.licenses; [ asl20 ];
  };
}
