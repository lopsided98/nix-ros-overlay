
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, ament-lint-common, open-sound-control-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-open-sound-control-bridge";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/open_sound_control-release/archive/release/jazzy/open_sound_control_bridge/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "1ccecfd8fa5b09a57e340cb1bdb779ee163cb705b59586c0cf0eb14b8aa52507";
  };

  buildType = "ament_python";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ open-sound-control-msgs std-msgs ];

  meta = {
    description = "Bridge node for converting between OSC and ROS messages";
    license = with lib.licenses; [ asl20 ];
  };
}
