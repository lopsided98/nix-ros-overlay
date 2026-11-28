
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, dynmsg, dynmsg-msgs, example-interfaces, geometry-msgs, rcl, rcl-action, rmw, std-msgs, test-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-humble-dynmsg-demo";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dynamic_message_introspection-release/archive/release/humble/dynmsg_demo/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "5b7555e85de937ba09aae93e5c943914d1e8068b1794bf828004ff379b3c2977";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common dynmsg-msgs example-interfaces geometry-msgs std-msgs test-msgs ];
  propagatedBuildInputs = [ ament-cmake-ros-core dynmsg rcl rcl-action rmw yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ament-cmake-ros-core ];

  meta = {
    description = "Demo of dynamic message type loading";
    license = with lib.licenses; [ asl20 ];
  };
}
