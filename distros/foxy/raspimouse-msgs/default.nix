
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-foxy-raspimouse-msgs";
  version = "1.1.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/raspimouse2-release/archive/release/foxy/raspimouse_msgs/1.1.0-4.tar.gz";
    name = "1.1.0-4.tar.gz";
    sha256 = "0ae01769bf1c313fe9a10e6b8b0974ff656a930f79e3dbe6be22aa964d4ed6ed";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''RaspiMouse messages'';
    license = with lib.licenses; [ asl20 ];
  };
}
