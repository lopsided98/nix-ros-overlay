
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-jazzy-keyboard-handler";
  version = "0.3.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/keyboard_handler-release/archive/release/jazzy/keyboard_handler/0.3.1-2.tar.gz";
    name = "0.3.1-2.tar.gz";
    sha256 = "594e0b4791bef8dd94e8507ca645d3618834e860e61f7615b3e2ca7507628e94";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Handler for input from keyboard";
    license = with lib.licenses; [ asl20 ];
  };
}
