
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, ros-environment, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-jsk-gui-msgs";
  version = "5.0.1-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common_msgs-release/archive/release/lyrical/jsk_gui_msgs/5.0.1-2.tar.gz";
    name = "5.0.1-2.tar.gz";
    sha256 = "41879c8f926741efb9d9c1cf67fe5b69b8c7992e395084d30598a0e9112c6c9f";
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
