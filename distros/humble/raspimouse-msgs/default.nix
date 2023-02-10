
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-raspimouse-msgs";
  version = "1.1.1-r7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/raspimouse2-release/archive/release/humble/raspimouse_msgs/1.1.1-7.tar.gz";
    name = "1.1.1-7.tar.gz";
    sha256 = "7bfb427eabf36be186aac43ce3eb3e6f00ce77b452856caf8fbfe59e6f2579ab";
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
