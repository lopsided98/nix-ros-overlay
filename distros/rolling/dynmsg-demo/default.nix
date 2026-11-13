
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-ros-core, ament-lint-auto, ament-lint-common, dynmsg, dynmsg-msgs, example-interfaces, geometry-msgs, rcl, rcl-action, rmw, std-msgs, test-msgs, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-rolling-dynmsg-demo";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dynamic_message_introspection-release/archive/release/rolling/dynmsg_demo/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "ccd87d31b35e70148a4b641c6cc2753becf47685a71eb216021bb8f31ced28d2";
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
