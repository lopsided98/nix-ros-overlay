
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, ros-environment, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-jsk-gui-msgs";
  version = "5.0.1-r3";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common_msgs-release/archive/release/jazzy/jsk_gui_msgs/5.0.1-3.tar.gz";
    name = "5.0.1-3.tar.gz";
    sha256 = "543316a5a4a802060f01fe427978489d6b30c1c1904f1efe29e4fa37562d6ab3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "jsk_gui_msgs";
    license = with lib.licenses; [ asl20 ];
  };
}
