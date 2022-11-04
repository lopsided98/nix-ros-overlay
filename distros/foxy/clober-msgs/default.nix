
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-clober-msgs";
  version = "0.1.0-r3";

  src = fetchurl {
    url = "https://github.com/CLOBOT-Co-Ltd-release/clober_msgs_ros2-release/archive/release/foxy/clober_msgs/0.1.0-3.tar.gz";
    name = "0.1.0-3.tar.gz";
    sha256 = "aea55a757c4d37708d7322917dc47c52733b841d045dee262be60f713181b99a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''clober robot standard messages'';
    license = with lib.licenses; [ asl20 ];
  };
}
